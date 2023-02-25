using YAML, DelimitedFiles

YAMLfilename = "src/fileIO/matrix.yml"

yamlread = YAML.load_file(YAMLfilename)
println("read from:")
display(yamlread["A"])
println()

# delimiter is space
delimiter = ' '

matrix =readdlm(IOBuffer(yamlread["A"]), delimiter)

println("obtained matrix:")
display(matrix)
