.PHONY: build
build:
	nvidia-docker build -t sbouchardet/vinet .

.PHONY: run
run:
	nvidia-docker run --shm-size=12G -v $(PWD):/home/app -it sbouchardet/vinet bash