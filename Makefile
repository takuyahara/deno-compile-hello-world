.SILENT:
.PHONY: clean
clean:
	rm -rf dist && mkdir dist

.SILENT:
.PHONY: build
build: clean
	deno compile --target x86_64-pc-windows-msvc --allow-read src/main.ts --output dist/windows.exe
	deno compile --target aarch64-apple-darwin --allow-read src/main.ts --output dist/darwin
	deno compile --target x86_64-unknown-linux-gnu --allow-read src/main.ts --output dist/linux