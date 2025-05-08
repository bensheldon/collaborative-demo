import * as React from "react";
import * as ReactDOM from "react-dom";

import CollaborativeEditor from "./CollaborativeEditor";

// Render component with data
document.addEventListener("DOMContentLoaded", () => {
  const nodes = document.querySelectorAll(".collaborative-editor");

  nodes.forEach(node => {
    const data = JSON.parse(node.getAttribute("data"));
    ReactDOM.render(
      React.createElement(CollaborativeEditor, data),
      node
    );
  });
});
