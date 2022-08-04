image.build:
	docker build --no-cache . -f ./build/docker/Dockerfile -t fearofcode/ecs:$(version) --build-arg VERSION=$(version)
image.publish:
	docker buildx build --no-cache . --push --platform linux/arm/v7,linux/arm64/v8,linux/amd64  --tag fearofcode/ecs:$(version) -f ./build/docker/Dockerfile --build-arg VERSION=$(version)
image.shell:
	docker run --rm -it --entrypoint sh fearofcode/ecs:$(version)