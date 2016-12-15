CARGO_FLAGS += --release

clean:
  cargo clean $(CARGO_FLAGS)
  
build:
  cargo build $(CARGO_FLAGS)
  
test:
  cargo test $(CARGO_FLAGS)
  
build_and_test: clean build test

.PHONY: clean build test
