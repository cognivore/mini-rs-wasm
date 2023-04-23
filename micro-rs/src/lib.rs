#![no_std]

#[panic_handler]
fn handle_panic(_: &core::panic::PanicInfo) -> ! {
    loop {}
}

const INPUT: &[u8] = b"1000
2000
3000

4000

5000
6000

7000
8000
9000

10000";
const INPUT_LEN: usize = INPUT.len();

#[no_mangle]
pub fn ping(val: i32) -> i32 {
    val
}

fn get_byte_at(ix: usize) -> u8 {
    if ix < INPUT_LEN {
        INPUT[ix]
    } else {
        0
    }
}

#[no_mangle]
pub fn get_max() -> i32 {
    let mut max = 0;
    let mut total = 0;
    let mut ix = 0;

    loop {
        let current;
        (current, ix) = parse_num(ix, INPUT_LEN);
        total += current;

        if ix >= INPUT_LEN || get_byte_at(ix + 1) == b'\n' {
            if total > max {
                max = total;
            }

            total = 0;

            if ix != INPUT_LEN {
                ix += 2;
            } else {
                break;
            }
        } else {
            ix += 1;
        }
    }

    max
}

fn parse_num(mut ix: usize, len: usize) -> (i32, usize) {
    let mut num = 0;
    while ix < len && get_byte_at(ix) != b'\n' {
        num = num * 10 + (get_byte_at(ix) - b'0') as i32;
        ix += 1;
    }

    (num, ix)
}
