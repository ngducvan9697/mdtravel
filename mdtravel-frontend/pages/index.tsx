import React from "react";
import Articles3Block from "../components/articles3Block";
import Articles4Block from "../components/articles4Block";
import ContactBlock from "../components/contact";
import Galleries from "../components/galleries";
import Header from "../components/header";
import Layout from "../components/layout";
import PinBlock from "../components/pinBlock";
import Seo from "../components/seo";
import VideoSection from "../components/videosSection";
import { fetchAPI } from "../lib/api";

const Home = ({
  newArticles,
  bestArticles,
  categories,
  homepage,
  personalData,
  galleryInternalData,
  galleryExternalData,
}) => {
  return (
    <Layout categories={categories} personalData={personalData}>
      <Seo seo={homepage.attributes.seo} />
      <Header personalData={personalData} homepage={homepage} />
      <Galleries data={galleryInternalData} />
      <Articles4Block articles={newArticles} />
      <Articles3Block articles={bestArticles} />
      <PinBlock
        article={homepage.attributes.featuredPost}
        pinLinks={homepage.attributes.pinLinks}
      />
      <ContactBlock homepage={homepage} />
      <VideoSection data={galleryExternalData} />
    </Layout>
  );
};

export async function getStaticProps() {
  // Run API calls in parallel
  const [
    newArticlesRes,
    bestArticlesRes,
    categoriesRes,
    homepageRes,
    personalRes,
    galleryInternalRes,
    galleryExternalRes,
  ] = await Promise.all([
    fetchAPI("/posts", {
      populate: ["featuredImage", "category", "author", "location"],
      sort: ["createdAt"],
      filters: {
        postType: {
          $eq: "NORMAL",
        },
      },
      pagination: {
        start: 0,
        limit: 4,
      },
    }),
    fetchAPI("/posts", {
      populate: ["category", "author", "location"],
      sort: ["createdAt"],
      filters: {
        postType: {
          $eq: "BEST_INTERACTIVE",
        },
      },
      pagination: {
        start: 0,
        limit: 3,
      },
    }),
    fetchAPI("/categories", { populate: "*" }),
    fetchAPI("/homepage", {
      populate: {
        mainBanner: { populate: "*" },
        subBanners: { populate: "*" },
        seo: { populate: "*" },
        pinLinks: { populate: "*" },
        featuredPost: { populate: ["category", "author", "location"] },
      },
    }),
    fetchAPI("/personal-info", {
      populate: "*",
    }),
    fetchAPI("/galleries", {
      populate: {
        asset: {
          populate: {
            source: {
              populate: "*",
              pagination: {
                start: 0,
                limit: 1,
              },
            },
          },
        },
      },
      filters: {
        asset: {
          type: {
            $eq: "INTERNAL",
          },
        },
      },
      pagination: {
        start: 0,
        limit: 6,
      },
    }),
    fetchAPI("/galleries", {
      populate: {
        asset: {
          populate: {
            thumbnail: {
              populate: "*",
              pagination: {
                start: 0,
                limit: 1,
              },
            },
          },
        },
      },
      filters: {
        asset: {
          type: {
            $eq: "EXTERNAL",
          },
        },
      },
      pagination: {
        start: 0,
        limit: 3,
      },
    }),
  ]);

  return {
    props: {
      newArticles: newArticlesRes.data,
      bestArticles: bestArticlesRes.data,
      categories: categoriesRes.data,
      homepage: homepageRes.data,
      personalData: personalRes.data,
      galleryInternalData: galleryInternalRes.data,
      galleryExternalData: galleryExternalRes.data,
    },
    revalidate: 1,
  };
}

export default Home;
