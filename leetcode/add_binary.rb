def add_binary(a, b)
    int_a = Integer(a, 2)
    int_b = Integer(b, 2)
    (int_a + int_b).to_s(2)
end
