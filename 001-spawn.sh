#!/usr/bin/expect
set timeout 30
# 打印文字
puts "examples of spawn command"
# 执行ls命令
spawn ls
interact

puts "quit ls"
puts "try sh, you can interact with sh by yourself"

spawn bash
interact