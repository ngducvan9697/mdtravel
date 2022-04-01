import React from "react";
import Image from "./image";

const GalleryBlock = ({ asset, section, index }) => {
  let getGalleryTemplate = () => {
    if (
      (section % 2 === 0 && index === 0) ||
      (section % 2 === 1 && index === 2)
    ) {
      return "md:p-2 p-1 w-full grid relative";
    }

    return "md:p-2 p-1 w-1/2 grid relative";
  };

  return (
    <div className={getGalleryTemplate()}>
      <Image setLayout="responsive" setObjectFit="cover" image={asset.source} />
    </div>
  );
};

export default GalleryBlock;
