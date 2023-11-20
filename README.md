# goTest
go lang test


# using tinygo
- ./html 파일에 html, js 수정
- ./main/main.go 함수 작성
- make main -> wasm 빌드 
- go run server.go -> 빌드 후 go lang 으로 서버 띄우기

# using cross-wasm
- main 에서 함수 작성
- make cross_main -> cross wasm tinygo 경로에 wasm 빌드 생성
- cd /js-exec-go-wasm/solutions/tinygo
- npm run start



