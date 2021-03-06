import Navbar from "./navbar";
import Image from "./image";

const Header = ({ personalData, homepage }) => {
  return (
    <section className="text-gray-600 body-font">
      <div className="container px-5 mx-auto flex flex-col">
        <div className="lg:w-4/6 mx-auto">
          <div className="rounded-lg h-64 relative overflow-hidden object-center">
            <Image
              setLayout="fill"
              setObjectFit="cover"
              image={homepage.attributes.mainBanner}
            />
          </div>
          <div className="flex flex-col sm:flex-row mt-10">
            <div className="sm:w-1/3 text-center sm:pr-8 sm:py-8">
              <div className="w-20 h-20 rounded-full relative m-auto overflow-hidden">
                <Image
                  image={personalData.attributes.avatar}
                  setLayout="fill"
                  setObjectFit="cover"
                />
              </div>
              <div className="flex flex-col items-center text-center justify-center">
                <h2 className="font-light title-font mt-4 text-gray-900 text-lg">
                  <i>I am </i>{" "}
                  <span className="font-medium">
                    {personalData.attributes.displayName}
                  </span>
                </h2>
                <div className="w-12 h-1 bg-indigo-500 rounded mt-2 mb-4"></div>
                <p className="text-base">{personalData.attributes.email}</p>
              </div>
            </div>
            <div className="sm:w-2/3 sm:pl-8 sm:py-8 sm:border-l border-gray-200 sm:border-t-0 border-t mt-4 pt-4 sm:mt-0 text-center sm:text-left">
              <p className="leading-relaxed text-lg mb-4">
                {personalData.attributes.sortDescription}
              </p>
              <a className="text-indigo-500 inline-flex items-center">
                Tìm hiểu thêm
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
        </div>
      </div>
    </section>
  );
};

export default Header;
