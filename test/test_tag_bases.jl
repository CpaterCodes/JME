using Test
include("../src/tag_bases.jl")

@testset "Can produce a standard tag with a name" begin
	@test tag("s")()("Hello World!") == "<s>Hello World!</s>"
end

@testset "Can produce a tag with attributes" begin
	paragraph = tag("p")("class"=>"paragraph", "id"=>1)("First!")
	@test occursin("class=\"paragraph\"", paragraph)
	@test occursin("id=\"1\"", paragraph)
	@test occursin(">First!<", paragraph)
end

@testset "Can produce tags with no content" begin 
	image = tag("img")("src"=>"Hello-World.png", "alt"=>"Hello World!")()
	@test occursin("alt=\"Hello World!\"", image)
	@test !occursin("</img>", image)
end

