#!/usr/bin/expect
# 设置超时时间
set timeout 30

spawn ls
expect {
    "001*"    { puts "find file startswith 001" }
    "002*"    { puts "find file startswith 002" }
    default   { puts "can not find target file" }
}
# interact

spawn ls
expect {
    "abc*"    { puts "find file startswith 001" }
    "def*"    { puts "find file startswith 002" }
    default   { puts "can not find target file" }
}

# interact
# spawn_id: spawn id exp8 not open
#     while executing
# "interact"
#     (file "./002-expect.sh" line 20)