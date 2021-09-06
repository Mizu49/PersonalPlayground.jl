struct TestStruct
    data1::Vector
    data2::Matrix
end

function Base.getindex(data::TestStruct, idx::Int)::Tuple
    # 例外処理
    1 <= idx <= length(data.data1) || throw(BoundsError(data.data1, idx))
    1 <= idx <= length(data.data2) || throw(BoundsError(data.data2, idx))

    return (data.data1[idx], data.data2[idx, idx])
end

function Base.setindex!(data::TestStruct, val::Real, idx::Int)
    # 例外処理
    1 <= idx <= length(data.data1) || throw(BoundsError(data.data1, idx))
    1 <= idx <= length(data.data2) || throw(BoundsError(data.data2, idx))

    data.data1[idx] = val
    data.data2[idx, idx] = val

    return
end


hoge = TestStruct(rand(100), rand(100, 100))
