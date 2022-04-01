import Navbar from "./navbar";

const Layout = ({ children, categories }) => (
  <>
    <Navbar categories={categories}></Navbar>
    {children}
  </>
);

export default Layout;
