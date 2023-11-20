main: clean wasm_exec
	tinygo build -o ./html/main.wasm -target wasm ./main/main.go
	cp -r ./www/* ./html/


wasm_exec:
	cp `tinygo env TINYGOROOT`/targets/wasm_exec.js ./html/

clean:
	rm -rf ./html
	mkdir ./html