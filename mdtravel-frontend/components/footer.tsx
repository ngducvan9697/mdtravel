import Link from "next/link";
import { useContext } from "react";
import { GlobalContext } from "../pages/_app";
import Image from "./image";
import SocialLink from "./socialLinks";

const Footer = ({ personalData, categories }) => {
  const global = useContext(GlobalContext) as any;

  return (
    <footer className="text-gray-600 body-font">
      <div className="container px-5 pt-24 mx-auto">
        <div className="flex flex-wrap md:text-left text-center order-first">
          <div className="lg:w-1/4 md:w-1/2 w-full px-4">
            <h2 className="title-font font-medium text-gray-900 tracking-widest text-sm mb-3">
              Danh mục
            </h2>
            <nav className="list-none mb-10 flex flex-col">
              {categories.map((category, i) => {
                return (
                  <Link key={i} href={`/category/${category.attributes.slug}`}>
                    <a className="text-gray-600 hover:text-gray-800">
                      {category.attributes.name}
                    </a>
                  </Link>
                );
              })}
            </nav>
          </div>
          <div className="lg:w-1/4 md:w-1/2 w-full px-4">
            <h2 className="title-font font-medium text-gray-900 tracking-widest text-sm mb-3">
              Đăng ký để nhận thông báo
            </h2>
            <div className="flex xl:flex-nowrap md:flex-nowrap lg:flex-wrap flex-wrap justify-center items-end md:justify-start">
              <div className="relative w-40 sm:w-auto xl:mr-4 lg:mr-0 sm:mr-4 mr-2">
                <label
                  htmlFor="footer-field"
                  className="leading-7 text-sm text-gray-600"
                >
                  Email
                </label>
                <input
                  type="text"
                  id="footer-field"
                  name="footer-field"
                  className="w-full bg-gray-100 bg-opacity-50 rounded border border-gray-300 focus:bg-transparent focus:ring-2 focus:ring-indigo-200 focus:border-indigo-500 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out"
                />
              </div>
              <button className="lg:mt-2 xl:mt-0 flex-shrink-0 inline-flex text-white bg-indigo-500 border-0 py-2 px-6 focus:outline-none hover:bg-indigo-600 rounded">
                Đăng ký
              </button>
            </div>
            <p className="text-gray-500 text-sm mt-2 md:text-left text-center">
              Bitters chicharrones fanny pack
              <br className="lg:block hidden" />
              waistcoat green juice
            </p>
          </div>
        </div>
      </div>
      <div className="bg-gray-100">
        <div className="container px-5 py-1 mx-auto flex items-center  justify-center sm:flex-row flex-col">
          {/* <a className="flex title-font font-medium items-center md:justify-start justify-center text-gray-900"> */}
          <div className="relative grid w-20 h-20 object-contain object-center flex-shrink-0 rounded-full">
            <Image
              image={global.favicon}
              setLayout="responsive"
              setObjectFit="cover"
            />
          </div>
          {/* </a> */}
          <p className="text-sm text-gray-500 sm:ml-6 sm:mt-0 mt-4">
            {global.copyrightText}
            <a
              href="https://twitter.com/knyttneve"
              rel="noopener noreferrer"
              className="text-gray-600 ml-1"
              target="_blank"
            >
              {global.copyrightName}
            </a>
          </p>
          <span className="inline-flex sm:ml-auto sm:mt-0 mt-4 justify-center sm:justify-start">
            <SocialLink socialLink={global.socialLink} />
          </span>
        </div>
      </div>
    </footer>
  );
};

export default Footer;
