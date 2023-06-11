.PHONY: lint lint-fix format test alltest check install-all install

lint:
	cargo clippy --all-features --all-targets -- -D warnings

lint-fix:
	cargo clippy --fix --allow-staged --allow-dirty --all-features --all-targets
	cargo fmt

format:
	cargo fmt

test:
	cargo test

alltest:
	cargo test --all-features

check:
	cargo check --all-features --all-targets

install-all:
	cargo install --all-features --path .

install:
	cargo install --path .
