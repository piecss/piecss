# Piecss

gem install piecss

[![Gem Version](https://badge.fury.io/rb/piecss.svg)](http://badge.fury.io/rb/piecss)
[![npm version](https://badge.fury.io/js/piecss.svg)](https://badge.fury.io/js/piecss)


## Installation

```
\\ Install dependencies
npm install

\\ Install Sassdoc
gem install sassdoc

\\ Install scss lint
gem install scss_lint

```

## API Documentation

The API documentation can be compiled automatically from the source:

```
\\ Render API documentation
sassdoc sass/piecss

```

The docs are compiled inside a sassdoc folder in the project root and can be accessed in your browser. For more information on Sassdocs and how to use it, refer to [http://sassdoc.com/](http://sassdoc.com/).

## Development

If you want to develop for Piecss, you need to also install the linter:

```
\\ Install scss lint
gem install scss_lint

\\ Run linter
scss-lint sass/piecss/**/*.scss

```

For more information on Scss Lint and how to use it, refer to [https://github.com/brigade/scss-lint](https://github.com/brigade/scss-lint#usage).

## Unit Tests

```
\\ Run unit tests
sass --watch tests/all.scss sass/**/*.scss

```
