assert = require 'assert'
grunt = require 'grunt'
jquery = require 'jquery'

emberI18nPrecompile = require '../lib/ember-i18n-precompile'

describe 'createTemplate', ->
  it 'should return the expected template', ->
    fixture = grunt.file.read('test/fixtures/en.js')
    expected = grunt.file.read('test/expected/en.js')

    # Whitespace and newlines are annoying. These, really, are equivalent.
    trimmedActual = emberI18nPrecompile.createTemplate(fixture).trim().replace(/\ /g,'')
    trimmedExpected = expected.trim().replace(/\ /g,'')

    assert.equal(trimmedExpected, trimmedActual)
