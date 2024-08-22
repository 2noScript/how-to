#!/bin/bash

# Định nghĩa hàm
say_hello() {
    local name=$1
    echo "Hello, $name!"
}


# Gọi hàm
say_hello "Alice"
say_hello "Bob"
