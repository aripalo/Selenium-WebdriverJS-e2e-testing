expect = require("chai").expect
webdriverjs = require("webdriverjs")
client = webdriverjs.remote()

# Describe a feature
describe "Run Simple Selenium tests", ->

  # Add some helper commands
  before (done) ->
    client.addCommand "hasText", (selector, text, callback) ->
      @getText selector, (result) ->
        expect(result.value).to.have.string text
        callback()
    done()

  # Navigate to the URL for each test
  beforeEach (done) ->
    client.init()
    client.url "http://almadevicelab.fi/", done

  # Our simple test
  it "should be able to view the home page", (done) ->
    @timeout 10000
    client.hasText "header[role=navigation] h1", "Alma DeviceLab"
    done()

  # Terminate connection to selenium
  afterEach (done) ->
    client.end()
    done()

