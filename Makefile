VERSION = 0.1.0

default: test

clean:
	rm -rf .tmp

test: clean
	lettuce

loc:
	wc -l features/*.py