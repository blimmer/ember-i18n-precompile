(function() {
  var createTemplate, handlebars, unescape;

  handlebars = require('handlebars');

  unescape = function(v) {
    eval('v = "' + v + '"');
    return v;
  };

  createTemplate = function(src) {
    var result;
    result = src.replace(/:\s*["'](.*)["'](,?)/gi, function(match, p1, p2) {
      var res, unescaped;
      unescaped = unescape(p1);
      res = handlebars.precompile(unescaped);
      return ": t(" + res.toString() + ")" + (p2 || "");
    });
    return "(function() {\n" + "var t = Handlebars.template;\n" + result + "})();";
  };

  module.exports = {
    createTemplate: createTemplate
  };

}).call(this);
