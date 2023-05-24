# JME - Julia Markup Engine

---

## Rationale 

I'm going to be honest, the basic idea here is the same as with my project
Ketza - that is to say, a declarative interface for defining and composing
html tags and even entire documents... only this time, with Julia!

There exist a number of Julia libraries for rendering HTML and injecting 
data at specified points in the HTML, but the present project takes a 
different approach by focusing instead on defining and assembling
HTML components in code.

## Walking through an example

But of course, what does that even mean? Here is a visual example:

```julia
div = tag("div")
attributes = Dict("class"=>"answers", "id" => "42")

meaning_of_life = div(attributes)("The meaning of life!") 
```

The `meaning_of_life` in question would in turn be:

```html
<div class="answers" id="42">The meaning of life!</div>
```

## Plans 

For now, this project will serve as a bit of practice with some aspects of
the Julia programming language, but may become a package in future.

