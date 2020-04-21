import { ConnectedRouter } from "connected-react-router";
import React from "react";
import { Provider } from "react-redux";
import { HashRouter as Router, Route, NavLink, Switch } from "react-router-dom";

import Home from "./Home";

// const store = configureStore();

const Navigation = () => (
  <nav className="navbar navbar-expand-lg navbar-dark bg-dark">
    <ul className="navbar-nav mr-auto">
      <li className="nav-item">
        <NavLink exact className="nav-link" activeClassName="active" to="/">
          Home
        </NavLink>
      </li>
      <li className="nav-item">
        <NavLink
          exact
          className="nav-link"
          activeClassName="active"
          to="/articles"
        >
          Articles
        </NavLink>
      </li>
    </ul>
  </nav>
);

const Main = () => (
  <Switch>
    <Route exact path="/" component={Home} />
    {/* <Route exact path="/articles" component={ArticleList} />
    <Route exact path="/articles/new" component={ArticleAdd} />
    <Route exact path="/articles/:id" component={ArticleInfo} />
    <Route exact path="/articles/:id/edit" component={ArticleEdit} /> */}
  </Switch>
);

const App = () => {
  return (
    <div className="App">
      <Router>
        <div className="container">
          <Navigation />
          <Main />
        </div>
      </Router>
    </div>
  );
};

export default App;
