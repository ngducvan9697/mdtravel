import React from "react";
import { getFullVNDate } from "../lib/date";

const PinCart = ({ article }) => {
  return (
    <div className="md:w-2/3 md:pr-12 md:py-8 md:border-r md:border-b-0 mb-10 md:mb-0 pb-10 border-b border-gray-200">
      <p className="mb-2 text-xs font-semibold tracking-wide text-gray-600 uppercase">
        {getFullVNDate(article.data.attributes.publishedAt)}
      </p>
      <div className="mb-3">
        <a
          href="/"
          aria-label="Article"
          className="inline-block text-black transition-colors duration-200 hover:text-deep-purple-accent-400"
        >
          <p className="font-sans text-xl font-extrabold leading-none tracking-tight lg:text-4xl xl:text-5xl">
            {article.data.attributes.title}
          </p>
        </a>
      </div>
      <p className="mb-4 text-base text-gray-700 md:text-lg">
        {article.data.attributes.excerpt}
      </p>
    </div>
  );
};

export default PinCart;
