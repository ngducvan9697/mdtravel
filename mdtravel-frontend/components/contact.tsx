import React from "react";
import ContactForm from "./contactForm";
import Image from "./image";

const ContactBlock = ({ homepage }) => {
  return (
    <section className="text-gray-600 body-font relative">
      <div className="container px-5 pt-24 mx-auto flex gap-10">
        <div className="md:w-1/3">
          <ContactForm />
        </div>

        <div className="md:w-2/3 grid relative">
          <Image
            setLayout="responsive"
            setObjectFit="cover"
            image={homepage.attributes.subBanners}
          />
        </div>
      </div>
    </section>
  );
};

export default ContactBlock;
