class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @cards = [
      {
        link_path: "/get-mentors/Front-End",
        image_path: "frontend.jpg",
        title: "Front-end",
        content: "Front-end web development is the development of the graphical user interface of a website,
        through the use of HTML, CSS, and JavaScript, so that users can view and interact with that website."
      },
      {
        link_path: "/get-mentors/Back-End",
        image_path: "backend.jpg",
        title: "Back-end",
        content: "Back-end developers are the experts who build and maintain the mechanisms
        that process data and perform actions on websites."
      },
      {
        link_path: "/get-mentors/Devops",
        image_path: "devops.jpg",
        title: "Devops engineer",
        content: "A DevOps engineer is an IT generalist who should have a wide-ranging knowledge of both development and operations,
        including coding, infrastructure management, system administration, and DevOps toolchains."
      },
      {
        link_path: "/get-mentors/Product-Manager",
        image_path: "product-manager.png",
        title: "Product manager",
        content: "A product manager (PM) is a professional role that is responsible for the development of products for an organization,
        known as the practice of product management."
      },
      {
        link_path: "/get-mentors/Data-Engineer",
        image_path: "data-engineer.jpg",
        title: "Data engineer",
        content: "A data engineer is an IT worker whose primary job is to prepare data for analytical or operational uses."
      },
      {
        link_path: "/get-mentors/Software-Engineer",
        image_path: "software.jpg",
        title: "Software engineer",
        content: "A software engineer is a person who applies
        the principles of software engineering to design, develop, maintain, test, and evaluate computer software."
      }
    ]
  end
end
