import React from "react";
import GalleryBlock from "./galleryBlock";
import Image from "./image";
import _ from "lodash";

const VideoSection = ({ data }) => {
  return (
    <section className="text-gray-600 body-font">
      <div className="container px-5 pt-24 mx-auto flex flex-wrap">
        <div className="mx-auto flex flex-wrap">
          {data.map((gallery, i) => {
            let external = _.find(gallery.attributes.asset, [
              "type",
              "EXTERNAL",
            ]);
            return (
              <div
                key={i}
                className={
                  `flex flex-wrap ` +
                  (i === 0 ? "w-full" : "w-1/2") +
                  ` bg-gray-100 py-32 px-10 relative mb-4`
                }
              >
                <div className="w-full grid object-cover h-full object-center opacity-60 absolute inset-0">
                  <Image
                    setLayout="responsive"
                    setObjectFit="cover"
                    image={external?.thumbnail}
                  />
                </div>

                <div className="text-center relative z-10 w-full">
                  <h2 className="text-2xl text-gray-900 font-medium title-font mb-2">
                    Shooting Stars
                  </h2>
                  <p className="leading-relaxed">
                    Skateboard +1 mustache fixie paleo lumbersexual.
                  </p>
                  <a className="mt-3 text-indigo-500 inline-flex items-center">
                    Learn More
                    <svg
                      fill="none"
                      stroke="currentColor"
                      strokeLinecap="round"
                      strokeLinejoin="round"
                      strokeWidth="2"
                      className="w-4 h-4 ml-2"
                      viewBox="0 0 24 24"
                    >
                      <path d="M5 12h14M12 5l7 7-7 7"></path>
                    </svg>
                  </a>
                </div>
              </div>
            );
          })}
        </div>
      </div>
    </section>
  );
};

export default VideoSection;
