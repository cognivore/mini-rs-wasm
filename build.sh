cargo build --target wasm32-unknown-unknown --release
wasm2wat ./target/wasm32-unknown-unknown/release/hello_wasm.wasm -o ./target/wasm32-unknown-unknown/release/hello_wasm.wat
