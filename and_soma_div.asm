# c = (a<b) && ((a+b)%3) == 3
# Registers maping
# a: t0, b: t1, c: t2

#tmp1: t3, tmp2: t4

li $t0, 2
li $t1, 3

add  $t3, $t0, $t1		#(a+b)
li   $t4, 3			#3
div  $t4, $t3			#(a+b)/3
mfhi $t3			#res (a+b/3)
li   $t4, 3			
seq  $t3, $t3, $t4		#(a+b)%3 == 2

slt $t4, $t0, $t1		# (a<b)
and $t4, $t3, $t4		# (a<b) && (a+b)%3 == 2



