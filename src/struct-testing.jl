struct DataSet1
    x::Float64
    y::Float64
    z::Float64
end

mutable struct DataSet2
    a::Array{Float64}
    b::Array{Float64}
    c::Array{Float64}
end

struct InitValues
    init_a::Vector
    init_b::Vector
    init_c::Vector
end

mutable struct DekaiStruct

    data1::DataSet1
    data2::DataSet2

end

DakaiStruct(param::Tuple{Float64, Float64, Float64}, initvalues::InitValues, datanum::Int64) = begin

    data1 = DataSet1(param[1], param[2], param[3])

    a_array = zeros(10, datanum)
    a_array[:, begin] = initvalues.init_a

    b_array = zeros(100, datanum)
    b_array[:, begin] = initvalues.init_b

    c_array = zeros(100, datanum)
    c_array[:, begin] = initvalues.init_c

    data2 = DataSet2(a_array, b_array, c_array)

    return DekaiStruct(data1, data2)
end

initvalues = InitValues(rand(10), ones(100), randn(100))

dekaiyatu = DekaiStruct((1.0,2.0,3.0), initvalues, 1000)
