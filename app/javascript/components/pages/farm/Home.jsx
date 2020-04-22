import React from "react";
import { Button } from "antd";
import { useNavigate } from "react-router-dom";

const Home = (props) => {
  const navigate = useNavigate();
  return (
    <div className="jumbotron">
      <h1>Homes Page</h1>
      <Button type="primary" onClick={() => navigate("/dashboard/3123")}>
        Button
      </Button>
    </div>
  );
};

export default Home;
