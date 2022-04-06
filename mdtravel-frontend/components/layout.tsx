import Footer from "./footer";
import Navbar from "./navbar";

const Layout = ({ children, categories, personalData }) => (
  <>
    <Navbar categories={categories}></Navbar>
    {children}
    <Footer categories={categories} personalData={personalData} />
  </>
);

export default Layout;
