# easy-coding-standard
Docker file for https://github.com/symplify/easy-coding-standard

# To build
## Build example 
```shell
version=8.3.48 make image.build
```

# Usage
```shell
docker run --rm -it -w /app/bpg/ -v $(pwd):/app/bpg/ fearofcode/ecs:8.3.48 check
```