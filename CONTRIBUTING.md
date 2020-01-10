# Contributing to Dark-WhatsApp

1. [Getting Involved](#getting-involved)
2. [How to Report Style Issues](#how-to-report-style-issues)
3. [Style Guide](#style-guide)

## Getting Involved

There are a number of ways to get involved with the development of this Dark WhatsApp theme. Even if you've never contributed to an Open Source project before, we're always looking for help identifying missing styles or other issues.

## How to Report Style Issues

### I don't know CSS
If you don't know CSS very well and have found a missing style, please include as much as possible of following information when opening an issue:

* Screenshot of the problem
* Include the element(s) in the console if at all possible
  * To select an element, target it with your mouse then right-click and choose "Inspect Element"

### I know both CSS & GitHub
* Follow the style guide below
* Make any needed changes, then send us a pull request
* Please include a URL to the page (if public)

## Style Guide

* Limit to the [K&R (KNF variation style)](https://en.wikipedia.org/wiki/Indentation_style#Variant:_BSD_KNF), and **TAB SPACE INDENTATION** (not more, and not less than 4 spaces).

  * K&R - KNF Variation Example:
    ```css
    element[attr='value'] {
    ····property: value;
    }
    ```

  * **_Not_ Allman**
    ```css
    element[property='value']
    {
    ····property: value;
    }
    ```

* Strict space between the `selector` and the `{`:
    ```css
    /* good */
    element[attr='value'] { }

    /* bad */
    element[attr='value']{ }
    ```

* 4 [Tab] Space indentation
    ```css
    /* good */
    ····property: value;

    /* bad */
    ··property: value;
    --property: value;
    ·property: value;
    ```

* Try to wrap lines at around 80 characters.
* This style does not have a size limit, but:
  * If possible, reduce any added selectors. Remember that the style likely has an `!important` flag to override default styling, so a selector starting from the body isn't always necessary.
  * If your CSS definition already exists within the style, do not add it again! Add your selector to the existing definition.
* Insert any new CSS selectors in any available slot before the style definition, or on a new line as needed.
* If you want to add a new userstyle variable, please open an issue and discuss it with us first.
* Don't include version bumps with your contribution, all releases are handled internally.
* If your pull request (=PR) fixes an open issue or replaces another PR, include fixes/closes #issue-nr in your commit message title. [Read more on this](https://help.github.com/en/articles/closing-issues-using-keywords).

## Getting Started

* ![download](https://user-images.githubusercontent.com/20738487/72159480-1c06c100-33c5-11ea-91d1-7a67c1dd7ae5.png) [Download](https://github.com/vednoc/dark-whatsapp/archive/master.zip),
![fork](https://user-images.githubusercontent.com/20738487/72159479-1c06c100-33c5-11ea-9ce4-c3d17110348a.png) [fork](https://github.com/vednoc/dark-whatsapp/fork) or clone this repository.
* Make any changes to the [`wa.user.styl`](https://github.com/vednoc/dark-whatsapp/blob/master/wa.user.styl) file and save.

### Build & test

* Create & change into a new branch of your local Dark-WhatsApp repository.
* Open the style in the Stylus editor, and make sure to have "live preview" checked for testing.
* Once you are satisfied with the changes
  * You can add and commit the changes of the `wa.user.styl` file to your fork's branch.
  * Push the changes to your branch, then submit a pull request.
* And thanks again for contributing!
