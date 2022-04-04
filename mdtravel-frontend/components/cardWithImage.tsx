import React from "react";
import Image from "./image";

const CardWithImage = ({ article }) => {
  return (
    <div className="xl:w-1/4 md:w-1/2 md:p-2 p-1 flex flex-auto">
      <div className="bg-gray-100 p-6 rounded-lg w-full">
        <div className="h-40 rounded w-full object-cover object-center mb-6 grid">
          <Image
            setLayout="responsive"
            setObjectFit="cover"
            image={article.attributes.featuredImage}
          />
        </div>
        <h3 className="tracking-widest text-indigo-500 text-xs font-medium title-font">
          {article.attributes.category.data.attributes.name}
        </h3>
        <h2 className="text-lg text-gray-900 font-medium title-font mb-4">
          {article.attributes.title}
        </h2>
        <p className="leading-relaxed text-base">
          {article.attributes.excerpt}
        </p>
      </div>
    </div>
  );
};

export default CardWithImage;
