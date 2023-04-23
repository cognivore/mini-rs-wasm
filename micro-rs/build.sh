cargo build --target wasm32-unknown-unknown --release --features=disable_float
wasm2wat ./target/wasm32-unknown-unknown/release/hello_wasm.wasm -o ./target/wasm32-unknown-unknown/release/hello_wasm.wat
