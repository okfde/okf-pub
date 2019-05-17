# okf-pub

A Jekyll theme for online publications.

## Installation

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "okf-pub-theme"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: okf-pub-theme
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install okf-pub-theme

## Usage

This is a Jekyll theme for publications, sort of like a book.

It offers two layouts, `home` and `page`.

`home` should be used for the landing page of your site, like the `index.md` on the top level like so:

``` md
---
layout: home
title: Landing page
---
```
Every other page that represents a page in the book gets layout `page`.

To ensure that Jekyll handles all pages in the correct order always, add the `chapter` key in the frontmatter and give it a continuous value. You can add it below the title.

To see if a page is top or sub level in the main navigation, the theme will look at the permalink key in the front matter.

So a page should have the following keys:

``` yaml
---
layout: page
title: Introduction chapter or whatever
permalink: /introduction/
chapter: 1
---
```

There are a bunch of variables you should set in your config.yml to, as well.
This theme will use the following:

``` yaml
title: A title
description: >
  Description and teaser, used in a couple of places
# optional image for the landing page
main_image: path/to-image.png
# information for licenses in the footer
license:
  holder: Open Knowledge Foundation Deutschland
  license: License CC BY-SA 3.0
mainpage:
  url: //your-actual-website.tld
  label: Go back to the actual website
  year: 2018
  pdf: /fake/link/to.pdf
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
