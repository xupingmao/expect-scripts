#!/usr/bin/expect
# 设置超时时间
set timeout 30

spawn sh

send ls\r

expect {
    "*" { puts "always puts this" }
}

send exit\r

interact