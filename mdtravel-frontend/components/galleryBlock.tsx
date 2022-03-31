import React from "react";
import Image from "./image";

const GalleryBlock = ({ gallery, key }) => {
  console.log("New", gallery);

  let getGalleryTemplate = () => {
    if (key !== 0 && key !== 1 && (key % 3 === 0 || (key - 1) % 3 === 0)) {
      return "md:p-2 p-1 w-full block";
    }

    return "md:p-2 p-1 w-1/2 block";
  };

  return (
    <div className={getGalleryTemplate()}>
      <Image setLayout="fill" setObjectFit="cover" image={gallery} />
    </div>
  );
};

export default GalleryBlock;
