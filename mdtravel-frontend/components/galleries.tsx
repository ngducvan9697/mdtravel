import React from "react";
import GalleryBlock from "./galleryBlock";
import Image from "./image";

const Galleries = ({ data }) => {
  return (
    <section className="text-gray-600 body-font">
      <div className="container px-5 py-24 mx-auto flex flex-wrap">
        <div className="flex flex-wrap md:-m-2 -m-1">
          <div className="flex flex-wrap w-1/2">
            {data.map((gallery, i) => {
              return (
                <>
                  <GalleryBlock gallery={gallery.attributes.asset[0]} key={i} />
                </>
              );
            })}
          </div>
        </div>
      </div>
    </section>
  );
};

export default Galleries;
