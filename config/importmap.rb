# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "src/collaborative_editor/index", to: "src/collaborative_editor/index.js"
pin "textarea-caret/index.js", to: "textarea-caret.js"
pin "actioncable", to: "actioncable.esm.js"
pin "textarea-caret", to: "textarea-caret.js" # @3.1.0
pin "turbolinks" # @5.2.0

# React
pin "react", to: "https://ga.jspm.io/npm:react@18.2.0/index.js"
pin "react-dom", to: "https://ga.jspm.io/npm:react-dom@18.2.0/index.js"
pin "scheduler", to: "https://ga.jspm.io/npm:scheduler@0.23.0/index.js"

# Stimulus
pin "@hotwired/stimulus", to: "@hotwired--stimulus.js" # @3.2.2
