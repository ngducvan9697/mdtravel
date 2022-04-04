import React from "react";
import CardWithDate from "./cardWithDate";

const Articles3Block = ({ articles }) => {
  return (
    <section className="text-gray-600 body-font">
      <div className="container px-5 pt-5 mx-auto">
        <div className="flex flex-wrap -mx-4 -my-8">
          {articles.map((article, i) => {
            return <CardWithDate article={article} key={i} />;
          })}
        </div>
      </div>
    </section>
  );
};

export default Articles3Block;
