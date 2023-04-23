(module
  (type (;0;) (func (param i32) (result i32)))
  (type (;1;) (func (result i32)))
  (func $ping (type 0) (param i32) (result i32)
    local.get 0)
  (func $get_max (type 1) (result i32)
    (local i32 i32 i32 i32 i32)
    i32.const 0
    local.set 0
    i32.const 0
    local.set 1
    loop (result i32)  ;; label = @1
      i32.const 0
      local.set 2
      block  ;; label = @2
        block  ;; label = @3
          loop  ;; label = @4
            local.get 0
            i32.const 53
            i32.gt_u
            br_if 1 (;@3;)
            i32.const 0
            local.set 3
            local.get 0
            local.set 4
            block  ;; label = @5
              loop  ;; label = @6
                local.get 4
                i32.const 0
                i32.add
                i32.load8_u
                local.tee 0
                i32.const 10
                i32.eq
                br_if 1 (;@5;)
                local.get 3
                i32.const 10
                i32.mul
                local.get 0
                i32.const -48
                i32.add
                i32.const 255
                i32.and
                i32.add
                local.set 3
                local.get 4
                i32.const 1
                i32.add
                local.tee 4
                i32.const 54
                i32.ne
                br_if 0 (;@6;)
              end
              local.get 3
              local.get 2
              i32.add
              local.tee 4
              local.get 1
              local.get 4
              local.get 1
              i32.gt_s
              select
              return
            end
            local.get 3
            local.get 2
            i32.add
            local.set 2
            block  ;; label = @5
              local.get 4
              i32.const 53
              i32.gt_u
              br_if 0 (;@5;)
              i32.const 54
              local.set 0
              local.get 4
              i32.const 53
              i32.eq
              br_if 1 (;@4;)
              local.get 4
              i32.const 1
              i32.add
              local.set 0
              local.get 4
              i32.const 1
              i32.add
              i32.load8_u
              i32.const 10
              i32.ne
              br_if 1 (;@4;)
            end
          end
          local.get 2
          local.get 1
          local.get 2
          local.get 1
          i32.gt_s
          select
          local.set 1
          br 1 (;@2;)
        end
        local.get 2
        local.get 1
        local.get 2
        local.get 1
        i32.gt_s
        select
        local.set 1
        local.get 0
        local.set 4
        local.get 0
        i32.const 54
        i32.ne
        br_if 0 (;@2;)
        local.get 1
        return
      end
      local.get 4
      i32.const 2
      i32.add
      local.set 0
      br 0 (;@1;)
    end)
  (memory (;0;) 1)
  (global (;0;) (mut i32) (i32.const 0))
  (global (;1;) i32 (i32.const 54))
  (global (;2;) i32 (i32.const 64))
  (export "memory" (memory 0))
  (export "ping" (func $ping))
  (export "get_max" (func $get_max))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (data (;0;) (i32.const 0) "1000\0a2000\0a3000\0a\0a4000\0a\0a5000\0a6000\0a\0a7000\0a8000\0a9000\0a\0a10000"))
