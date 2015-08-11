run:
	@AWKPATH=. sample.awk

test:
	@AWKPATH=. awk -f array/array_test.awk
	@AWKPATH=. awk -f math/math_test.awk
