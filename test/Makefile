bin=../bin

all: test
	

job:
	${bin}/djobs samples.txt ./run.sh

test: job
	${bin}/dlazy job
	cat log/*.rc | sort | uniq -c | cut -f 1
	grep processed out/*.txt

test-parallel: test
	rm -rf out log
	${bin}/pdlazy job -j 2
	cat log/*.rc | sort | uniq -c | cut -f 1
	grep processed out/*.txt

clean:
	rm -rf job out log
