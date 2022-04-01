import React from "react";
import Articles4Block from "../components/articles";
import Galleries from "../components/galleries";
import Header from "../components/header";
import Layout from "../components/layout";
import Seo from "../components/seo";
import { fetchAPI } from "../lib/api";

const Home = ({
  newArticles,
  bestArticles,
  categories,
  homepage,
  personalData,
  galleryData,
}) => {
  return (
    <Layout categories={categories}>
      <Seo seo={homepage.attributes.seo} />
      <Header personalData={personalData} homepage={homepage} />
      <Galleries data={galleryData} />
      <Articles4Block articles={newArticles} />
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
    galleryRes,
  ] = await Promise.all([
    fetchAPI("/posts", {
      populate: ["featuredImage", "category", "author", "location"],
      sort: ["createdAt"],
      filter: {
        bestInteractive: {
          $ne: true,
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
      filter: {
        bestInteractive: {
          $eq: true,
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
        featuredPost: { populate: "*" },
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
      pagination: {
        start: 0,
        limit: 6,
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
      galleryData: galleryRes.data,
    },
    revalidate: 1,
  };
}

export default Home;
