# JME - Julia Markup Engine

---

## Rationale 

In truth, the basic idea with this project is the same as with my project
Ketza - that is to say, a declarative interface for defining and composing
html tags and even entire documents... only this time, with julia!

There exist a number of julia libraries for rendering HTML and injecting 
data at specified points in the HTML, but the present project takes a 
different approach by focusing instead on defining and assembling
HTML components in code.

## Walking through a starting example

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

For now this project will serve as an exercise in use of the julia 
programming language. However, it may also become a package in future.

