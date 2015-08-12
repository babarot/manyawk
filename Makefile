run:
	@AWKPATH=. sample.awk

test:
	@AWKPATH=. awk -f array/array_test.awk
	@AWKPATH=. awk -f math/math_test.awk
	@AWKPATH=. awk -f path/path_test.awk
	@AWKPATH=. awk -f strings/strings_test.awk
	@AWKPATH=. awk -f sort/sort_test.awk
	@AWKPATH=. awk -f time/time_test.awk
