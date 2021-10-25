strcmp:
  lw s8, 0(a0)	      	# (load word into s8) s8 contains a string located in a0
  lw s9, 0(a1)	      	# (load word into s9) s9 contains a string locted in a1
  beq s8, s9, true	# check for equality, if s8 = s9, move to true
  bne s8, s9, false	# another equality check if s8 != s9, move to false
  jalr ra
true:
  addi s10, zero, 0x1	# s10 inherits the value of 1
  mv a0, s10		# mv will move the value of s10 into a0
  jalr ra
false:
  addi s11, zero, 0x0	# s11 inherits the value of 0
  mv a0, s11		# value of s11 is moved to a0
  jalr ra
