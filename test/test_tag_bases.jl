using Test
include("../src/tag_bases.jl")

@testset "Can produce a standard tag with a name" begin
	@test tag("s")()("Hello World!") == "<s>Hello World!</s>"
end

@testset "Can produce a tag with attributes" begin
	attributes = Dict("class"=>"paragraph", "id"=>1) 
	paragraph = tag("p")(attributes)("First!")
	@test occursin("class=\"paragraph\"", paragraph)
	@test occursin("class=\"paragraph\"", paragraph)
	@test occursin(">First!<", paragraph)
end

@testset "Can produce tags with no content" begin 
	attributes = Dict(
		"src"=>"Hello-World.png", 
		"alt"=>"Hello World!"
	)
	image = tag("img")(attributes)()
	@test occursin("alt=\"Hello World!\"", image)
	@test !occursin("</img>", image)
end

