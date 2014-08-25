ember-i18n-precompile
=====================

# NO LONGER MAINTAINED
As of [ember-i18n v. 2.1.0](https://github.com/jamesarosen/ember-i18n/releases/tag/v2.1.0) there's a Handlebars-less compiler included with i18n. I'll likely opt for this instead of completing this project.

Simple precompiler tasks for ember-i18n by jamesarosen

# Background
The [ember-i18n](https://github.com/jamesarosen/ember-i18n) project is a great resource to internationalize your Ember application. Unfortunatley, it requires the full handlebars.js package, instead of just the handlebars.runtime.js file. The aim of this project is to provide utility functions you can easily integrate into the JS build system of choice.  

The source of this library originally came from the [grunt-ember-i18n-precompile](https://github.com/karl-sjogren/grunt-ember-i18n-precompile) project. In fact, I was originally using this plugin out-of-the-box. Then, I switched over to [brunch](http://brunch.io/) and needed a plugin for the new build system. So, this utility library will be used as part of [ember-i18n-precompile-brunch](https://github.com/blimmer/ember-i18n-precompile-brunch).  

# Usage
In most cases, you'll be using this to create a build system plugin. For an example, check out [ember-i18n-precompile-brunch](https://github.com/blimmer/ember-i18n-precompile-brunch).
If you want to utilize this for a new plugin, start by installing it in your plugin repository using ```npm install --save-dev ember-i18n-precompile```.
Then, use the ```createTemplate(src)``` method to generate the template.
Please note that you'll need to pass the full source to ```createTemplate()```, so make sure that you've done any concatenating before passing calling it.

# Build
This project is built using [Grunt](http://gruntjs.com/).

## Tasks
### Build
Run ```grunt``` to build the library file into the ```lib``` directory.
### Tests
Run ```grunt test``` to run the projects tests.
