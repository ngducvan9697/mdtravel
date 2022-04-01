import React from "react";
import GalleryBlock from "./galleryBlock";
import Image from "./image";
import _ from "lodash";

const Galleries = ({ data }) => {
  return (
    <section className="text-gray-600 body-font">
      <div className="container px-5 pt-24 mx-auto flex flex-wrap justify-center">
        <div className="flex flex-wrap md:-m-2 -m-1 w-full">
          {_.chunk(data, 3).map((galleries, i) => {
            return (
              <div key={i} className="flex flex-wrap w-1/2">
                {galleries.map((gallery, j) => {
                  return (
                    <GalleryBlock
                      asset={gallery.attributes.asset[0]}
                      key={j}
                      index={j}
                      section={i}
                    />
                  );
                })}
              </div>
            );
          })}
        </div>
      </div>
    </section>
  );
};

export default Galleries;
