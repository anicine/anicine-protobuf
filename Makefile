.PHONY: gen
gen: buf.gen.yaml clean fmt
	buf generate

.PHONY: install-buf
install-buf:
	go install github.com/bufbuild/buf/cmd/buf@latest

.PHONY: install-buf
install-all:
	go install github.com/google/gnostic/cmd/protoc-gen-openapi@latest
	go install github.com/google/gnostic/cmd/protoc-gen-openapi@latest
	go install github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-openapiv2@latest

.PHONY: fmt
fmt:
	find . -name '*.proto' | xargs clang-format -i --verbose

.PHONY: clean
clean:
	@rm -rf gen &> /dev/null