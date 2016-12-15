BUILD_CFG = release
CARGO_FLAGS += --$(BUILD_CFG)

resources:
  cp -R resources target/$(BUILD_CFG)/

clean:
  cargo clean $(CARGO_FLAGS)
  
build:
  cargo build $(CARGO_FLAGS)
  
test:
  cargo test $(CARGO_FLAGS)
  
build_and_test: clean build resources test

.PHONY: clean build resources test
