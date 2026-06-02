# Hook

Hook is a tiny id-based subscriber list for Roblox Luau.

It is built for hot callback lists where returned unbind closures and hash-table callback sets are more overhead than you want.

```luau
local Hook = require(path.to.hook)

local stepped: Hook.HookHandle<number> = Hook.new()

local id = stepped:add(function(dt)
	print(dt)
end)

stepped:fire(1 / 60)
stepped:remove(id)
```

## API

- `Hook.new()` creates a subscriber list.
- `hook:add(callback)` returns a numeric id.
- `hook:remove(id)` removes a callback and returns whether it existed.
- `hook:fire(...)` calls the active callbacks.
- `hook:clear()` removes every callback.
- `hook:size()` returns the active callback count.
- `hook:has(id)` returns whether an id is active.
- `hook:deconstruct()` clears the hook.

Removal outside of `fire` is O(1). Removal during `fire` is deferred and compacted once the current dispatch finishes, so callbacks can safely unhook themselves or others while the hook is firing.
