import React from "react";
import { Link } from "react-router-dom";

const ErrorPage = () => {
  return (
    <div>
      <h1>Oops! 404 Page not found</h1>
      <Link className="text-decoration-none" to="/">Home</Link>
    </div>
  );
};

export default ErrorPage;
