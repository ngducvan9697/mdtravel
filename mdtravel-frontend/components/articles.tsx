import React from "react";
import Card from "./card";

const Articles4Block = ({ articles }) => {
  return (
    <section className="text-gray-600 body-font">
      <div className="container px-5 pt-5 pb-24 mx-auto flex flex-wrap justify-center">
        <div className="flex flex-wrap md:-m-2 -m-1 w-full">
          {articles.map((article, i) => {
            return <Card article={article} key={i} />;
          })}
        </div>
      </div>
    </section>
  );
};

export default Articles4Block;
