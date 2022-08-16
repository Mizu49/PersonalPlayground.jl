using YAML, DelimitedFiles

YAMLfilename = "src/fileIO/matrix.yml"
TEXTfilename = "src/fileIO/matrix.txt"

yamlread = YAML.load_file(YAMLfilename)
println(yamlread["A"])

io = open(TEXTfilename, "r");
IOread = read(io, String)

delim_data = readdlm(TEXTfilename, ',', Float64, '\n')
