--!strict
--!optimize 2
--!native

local Hook = require(script.hook)

export type Callback<T...> = Hook.Callback<T...>
export type Hook<T...> = Hook.Hook<T...>
export type HookHandle<T...> = Hook.HookHandle<T...>

return Hook
