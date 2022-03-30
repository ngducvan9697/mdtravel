import React from "react";
import Articles from "../components/articles";
import Header from "../components/header";
import Seo from "../components/seo";
import { fetchAPI } from "../lib/api";

const Home = ({ articles, categories, homepage, personalData }) => {
  return (
    <>
      <Seo seo={homepage.attributes.seo} />
      <Header
        categories={categories}
        personalData={personalData}
        homepage={homepage}
      >
        <div className="uk-section">
          <div className="uk-container uk-container-large">
            <Articles articles={articles} />
          </div>
        </div>
      </Header>
    </>
  );
};

export async function getStaticProps() {
  // Run API calls in parallel
  const [articlesRes, categoriesRes, homepageRes, personalRes] =
    await Promise.all([
      fetchAPI("/posts", { populate: ["featuredImage", "category"] }),
      fetchAPI("/categories", { populate: "*" }),
      fetchAPI("/homepage", { populate: ["mainBanner", "subBanners ", "seo"] }),
      fetchAPI("/personal-info", {
        populate: "*",
      }),
    ]);

  return {
    props: {
      articles: articlesRes.data,
      categories: categoriesRes.data,
      homepage: homepageRes.data,
      personalData: personalRes.data,
    },
    revalidate: 1,
  };
}

export default Home;
