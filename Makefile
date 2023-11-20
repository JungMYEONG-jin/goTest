main: clean wasm_exec
	tinygo build -o ./html/main.wasm -target wasm ./main/main.go
	cp -r ./www/* ./html/

wasm_exec:
	cp `tinygo env TINYGOROOT`/targets/wasm_exec.js ./html/

clean:
	rm -rf ./html
	mkdir ./html

cross_main: cross_wasm_exec
	tinygo build -o ./js-exec-go-wasm/solutions/tinygo/tinygo.wasm -target wasm ./main/main.go

cross_wasm_exec:
	cp `tinygo env TINYGOROOT`/targets/wasm_exec.js ./js-exec-go-wasm/solutions/tinygo/tinygo_wasm_exec.js