import React from "react";
import { Button } from "antd";
import { useParams } from "react-router-dom";

const Dashboard = (props) => {
  const { id } = useParams();
  return (
    <div className="jumbotron">
      <h1>Dashboards Page ${id}</h1>
      <Button type="primary">Button</Button>
    </div>
  );
};

export default Dashboard;
