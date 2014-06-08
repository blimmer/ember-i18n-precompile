handlebars = require 'handlebars'
unescape = (v) ->
  eval('v = "'+v+'"')
  v

createTemplate = (src) ->
  result = src.replace(/:\s*["'](.*)["'](,?)/gi, (match, p1, p2) ->
    unescaped = unescape(p1);
    res = handlebars.precompile(unescaped)
    ": t(" + res.toString() + ")" + (p2 || "") # We need to add back the colon and possibly the comma at the end
  )

  "(function() {\n" +
    "var t = Handlebars.template;\n" +
    result +
    "})();"

module.exports =
  createTemplate: createTemplate
