import { useContext } from "react";
import { GlobalContext } from "../pages/_app";
import Categories from "./categories";
import NextImage from "./image";
import SocialLink from "./socialLinks";

const Header = ({ children, categories }) => {
  const global = useContext(GlobalContext) as any;
  const mainCategories = categories
    .filter((category) => category?.attributes?.isMain)
    .sort((category) => category?.attributes?.order);
  const subCategories = categories
    .filter((category) => !category?.attributes?.isMain)
    .sort((category) => category?.attributes?.order);

  return (
    <header className="text-gray-600 body-font">
      <div className="container mx-auto flex flex-wrap p-5 flex-col md:flex-row items-center">
        <nav className="flex lg:w-2/5 flex-wrap items-center text-base md:ml-auto">
          <Categories categories={mainCategories} />
        </nav>
        <a className="flex order-first lg:order-none lg:w-1/5 title-font font-medium items-center text-gray-900 lg:items-center lg:justify-center mb-4 md:mb-0">
          <div className="w-20 h-20 object-contain object-center flex-shrink-0 rounded-full mr-4">
            <NextImage image={global.favicon} />
          </div>
          <span className="ml-3 text-xl">{global.siteName}</span>
        </a>
        <div className="lg:w-2/5 inline-flex lg:justify-end ml-5 lg:ml-0">
          <nav className="flex lg:w-2/5 flex-wrap items-center text-base md:ml-auto">
            <Categories categories={subCategories} />
          </nav>
          <SocialLink socialLink={global.socialLink} />
        </div>
      </div>
    </header>
  );
};

export default Header;
