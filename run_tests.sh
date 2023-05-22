for test_file in ./test/*
	do
		julia --project=. $test_file
	done
