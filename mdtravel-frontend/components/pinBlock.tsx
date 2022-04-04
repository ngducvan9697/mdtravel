import React from "react";
import PinCart from "./pinCard";

const PinBlock = ({ article, pinLinks }) => {
  return (
    <section className="text-gray-600 body-font">
      <div className="container flex flex-wrap md:px-20 mx-auto items-center">
        <PinCart article={article} />
        <div className="flex flex-col md:w-1/3 md:pl-12">
          <nav className="flex flex-row flex-wrap list-none -mb-1">
            {pinLinks.map((link) => {
              return (
                <>
                  <li className="mb-1 w-1/2">
                    <a className="text-gray-600 hover:text-gray-800">
                      {link.title}
                    </a>
                  </li>
                </>
              );
            })}
          </nav>
        </div>
      </div>
    </section>
  );
};

export default PinBlock;
