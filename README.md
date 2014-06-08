ember-i18n-precompile
=====================

Simple precompiler tasks for ember-i18n by jamesarosen

# Background
The [ember-i18n](https://github.com/jamesarosen/ember-i18n) project is a great resource to internationalize your Ember application. Unfortunatley, it requires the full handlebars.js package, instead of just the handlebars.runtime.js file. The aim of this project is to provide utility functions you can easily integrate into the JS build system of choice.  

The source of this library originally came from the [grunt-ember-i18n-precompile](https://github.com/karl-sjogren/grunt-ember-i18n-precompile) project. In fact, I was originally using this plugin out-of-the-box. Then, I switched over to [brunch](http://brunch.io/) and needed a plugin for the new build system. So, this utility library will be used as part of [ember-i18n-precompile-brunch](https://github.com/blimmer/ember-i18n-precompile-brunch).  

# Build
This project is built using [Grunt](http://gruntjs.com/).

## Tasks
### Build
Run ```grunt``` to build the library file into the ```lib``` directory.
### Tests
Run ```grunt test``` to run the projects tests.
