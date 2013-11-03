# Workbench

A front-end workbench for writing small code and checking behavior easily.

## Usage

```sh
$ gem install bundler # if not installed
$ npm install -g bower # if not installed
$ git clone https://github.com/ykhs/workbench.git
$ cd workbench
$ rake setup
$ rake server
```

The website is found at localhost:9292.

## Add Packege

`bower install #{packege}` and add `require` directive to `assets/js/lib.coffee`

```sh
$ bower install momentjs
$ echo "#=require momentjs/moment.js" >> assets/js/lib.coffee
```

## Coding

Writing code to `assets/js/main.coffee`.

CSS work the same way by use of `assets/css/lib.scss` and `assets/css/main.scss`.

## Testing

Test runs at localhost:9292/test.

Put test code in `assets/js/tests/*.coffee`. Then `require_tree` directive includes `tests/*` automatically.

