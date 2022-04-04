import React from "react";
import { getDate, getMonthVN } from "../lib/date";

const CardWithDate = ({ article }) => {
  return (
    <div className="py-8 px-4 lg:w-1/3">
      <div className="h-full flex items-start">
        <div className="w-12 flex-shrink-0 flex flex-col text-center leading-none">
          <span className="text-gray-500 pb-2 mb-2 border-b-2 border-gray-200">
            {getMonthVN(article.attributes.publishedAt)}
          </span>
          <span className="font-medium text-lg text-gray-800 title-font leading-none">
            {getDate(article.attributes.publishedAt)}
          </span>
        </div>
        <div className="flex-grow pl-6">
          <h2 className="tracking-widest text-xs title-font font-medium text-indigo-500 mb-1">
            {article.attributes.category?.data?.attributes?.name}
          </h2>
          <h1 className="title-font text-xl font-medium text-gray-900 mb-3">
            {article.attributes.title}
          </h1>
          <p className="leading-relaxed mb-5">{article.attributes.excerpt}</p>
          {/* <a className="inline-flex items-center">
          <img alt="blog" src="https://dummyimage.com/103x103" className="w-8 h-8 rounded-full flex-shrink-0 object-cover object-center">
          <span className="flex-grow flex flex-col pl-3">
            <span className="title-font font-medium text-gray-900">Alper Kamu</span>
          </span>
        </a> */}
        </div>
      </div>
    </div>
  );
};

export default CardWithDate;
