const fs = require("fs");

(async () => {
    // Read Wasm module
    const wasmBuffer = fs.readFileSync("target/wasm32-unknown-unknown/release/hello_wasm.wasm");

    const callbacks = {
        cb: {
            found_value_cb(value) {
                console.log(`Found value: ${value}`);
            },
        },
    };

    // Instantiate Wasm module
    const wasmModule = await WebAssembly.instantiate(wasmBuffer, callbacks);

    // Get exports from Wasm module
    const {
        get_max,
    } = wasmModule.instance.exports;

    // Call Wasm function
    const max = get_max();

    // Print result
    console.log(`Result: ${max}`);
})();
