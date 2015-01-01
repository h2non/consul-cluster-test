VERSION = 0.1.0

default: test

clean:
	rm -rf .tmp

vm:
	vagrant up
	vagrant ssh

cluster:
	blockade up

test: clean
	lettuce

loc:
	wc -l features/*.py