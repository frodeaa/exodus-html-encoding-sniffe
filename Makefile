build:
	docker build --iidfile ./build.iid .

run: build
	docker run --rm -p 8080:8080 $$(cat build.iid)

test:
	curl -XPOST "http://localhost:8080/2015-03-31/functions/function/invocations" -d '{}'
