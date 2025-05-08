// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails

import * as ActionCable from "actioncable";
import { Application } from "@hotwired/stimulus";

import CollaborativeEditorController from "./src/collaborative_editor/controller";
import "./src/collaborative_editor/index";

const application = window.Stimulus = Application.start();
application.register("collaborative-editor", CollaborativeEditorController);

window.App || (window.App = {});
window.App.cable = ActionCable.createConsumer();

window.ActionCable = ActionCable;

