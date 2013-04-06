# Singularity Extras

Singularity Extras are a set of plugins and add-ons for the [Singularity Grid System](https://github.com/Team-Sass/Singularity).

## Installation

Make sure you have [installed Singularity](https://github.com/Team-Sass/Singularity/wiki/Installation). Once Singularity is installed, you're good to install Singularity Extras:

`gem install singularity-extras`

### Using with an Existing Project

Using Singularity Extras with an existing Singularity project is easy. Add the following to your `config.rb` file:

`require 'singularity-extras'`

Then, add the following to your Sass file after your Singularity import:

`@import "singularity-extras"`

## Features

Singularity Extras currently offers the following features for use with Singularity:

### Grid Generators

Grid generators are functions used to create grids. You should use these when adding a grid using Singularity in place of where you were normally simply write out a grid.

* **Compound Grids**
	* Compound Grids combine multiple symmetric grids together to create a new asymmetric grid
	* Can compound up to 16 grids together
	* `compound($grid1, $grid2, $grid3…)`
* **Ratio Based Grid**
	* Grid that gets larger or smaller based on a ratio
	* Required parameters: `$ratio`, `$steps` (how many columns you'd like), `$start` (either `'small'` or `'large'`, defaults to `'small'`)
	* `ratio(golden(), 5)`
* **Ratio Spiral Grid**
	* Grid based on a spiral of the given ratio
	* Required parameters: `$depth` (number of turns, defaults to `5`), `$ratio` (defaults to `golden()`), `$invert` (inverts grid, defaults to `false`)
	* `ratio-spiral()`

### Layouts and Layout Helpers

Layouts and Layout Helpers are exactly what they sound like, either layouts built with the use of Singularity or helpers to help you build your own layouts.

* **Layout Mixin**
	* Mixin to help you override your global [Grid Contexts](https://github.com/Team-Sass/Singularity/wiki/Creating-Grids) and [Output Style Context](https://github.com/Team-Sass/Singularity/wiki/Output-Styles) as a block. This will automatically apply the relevant [context overrides](https://github.com/Team-Sass/Singularity/wiki/Spanning-The-Grid#context-overrides) to all `grid-span` mixins in the block.
	* Can nest `layout` mixins
	* Overridden global contexts ***will not be available*** while within a `layout` mixin.
	* Takes three optional parameters, `$grid`, `$gutter`, and `$output-style`.
	* Usage is simple; `@include layout($grid, $gutter, $output-style) { }`