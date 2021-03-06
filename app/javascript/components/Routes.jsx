import React from "react";
import { Routes, Route } from "react-router-dom";

import Home from "./pages/farm/Home";
import Dashboard from "./pages/dashboard/Dashboard";

export default function MainRoutes() {
  return (
    <Routes>
      <Route path="/" element={<Home />} />
      <Route path="/dashboard/:id" element={<Dashboard />} />

      <Route path="*" element={<h1>Rota não encontrada</h1>} />
    </Routes>
  );
}
