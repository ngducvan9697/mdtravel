import { getStrapiMedia } from "../lib/media";
import NextImage from "next/image";

const Image = ({
  image,
  setLayout,
  setObjectFit,
  setWidth,
  setHeight,
}: {
  image: any;
  setLayout?: any;
  setObjectFit?: any;
  setWidth?: any;
  setHeight?: any;
}) => {
  const { alternativeText, width, height } = image.data.attributes;
  console.log(width, height);

  return (
    <NextImage
      layout={setLayout || "responsive"}
      width={setWidth || width}
      height={setHeight || height}
      objectFit={setObjectFit || "contain"}
      src={getStrapiMedia(image)}
      alt={alternativeText || ""}
    />
  );
};

export default Image;
