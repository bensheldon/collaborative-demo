// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails

import * as ActionCable from "actioncable";
import "./src/collaborative_editor/index";

window.App || (window.App = {});
window.App.cable = ActionCable.createConsumer();

window.ActionCable = ActionCable;
