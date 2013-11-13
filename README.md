# Selenium + Mocha + Chai testing

## Prequisites

Requires Selenium Standalone Server. Install it with `brew install selenium-server-standalone`

## Installation

Run `npm install` on the repo root folder

## Usage

1. Start the Selenium Server with `java -jar /opt/boxen/homebrew/opt/selenium-server-standalone/selenium-server-standalone-<YOUR-VERSION>.jar -p 4444`
2. Run with `mocha --compilers coffee:coffee-script test.coffee -t 20000`
