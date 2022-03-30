import React from "react";
import Link from "next/link";

const Categories = ({ categories }) => {
  return (
    <>
      {categories.map((category, i) => {
        return (
          <Link key={i} href={`/category/${category.attributes.slug}`}>
            <a className="mr-5 hover:text-gray-900">
              {category.attributes.name}
            </a>
          </Link>
        );
      })}
    </>
  );
};

export default Categories;
