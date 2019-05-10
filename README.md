# okf-pub

A Jekyll theme for online publications.

## Installation

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "okf-pub"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: okf-pub
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install okf-pub

## Usage

This is a Jekyll theme for publications. It will render all `_content` into a single html file and generate a navigation with jump links.

Because of that this theme only has one layout, `home`, to be used in your `index.md` like so:

``` yaml
---
layout: home
---
```

For the layout to find all your Markdown files, put them into `_content` and numerate the filenames and folders for Jekyll to keep the order consistent. E.g:

```
- _content/
-- 1-intro.md
-- 2-overview.md
-- 3-sections/
---- 1-subsection.md
---- 2-subsection.md
-- 4-afterword.md
```

`content` is a [collection](https://jekyllrb.com/docs/collections/), in case you were wondering.

There are a bunch of variables you should set in your config.yml to, as well.
This theme will use the following:

``` yaml
title: A title
description: >
  Description and teaser, used in a couple of places
# path to the publication as pdf
pub:
  pdf: /fake/link/to.pdf
# were to link back to
mainpage:
  url: //your-actual-website.tld
  label: Go back to the actual website
  year: 2018
# used to generate project meta content
# these are the keys that will be looked for in the project.md files
chapter:
  effects:
    - label: Some Key
      key: somekey
    - label: another Key
      key: anotherkey
  resources:
    - label: Some Resource
      key: someresource
    - label: Another Resource
      key: anotherresource
  outcomes:
    - label: Some Outcome
      key: someoutcome
    - label: Anoter outcome with elaborate Title
      key: anotheroutcome

# Optional, matomo tracking code
# matomo:
#   url: //to-your-matomo.tdl
#   id: projectID

# All only .md files in the _content folder will be used
collections:
- content

```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/hello. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Development

To set up your environment to develop this theme, run `bundle install`.

Your theme is setup just like a normal Jekyll site! To test your theme, run `bundle exec jekyll serve` and open your browser at `http://localhost:4000`. This starts a Jekyll server using your theme. Add pages, documents, data, etc. like normal to test your theme's contents. As you make modifications to your theme and to your content, your site will regenerate and you should see the changes in the browser after a refresh, just like normal.

When your theme is released, only the files in `_layouts`, `_includes`, `_sass` and `assets` tracked with Git will be bundled.
To add a custom directory to your theme-gem, please edit the regexp in `okf-pub.gemspec` accordingly.

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
