--!strict
--!optimize 2

local HookTypes = require(script.components.hooks)

export type Callback<T...> = HookTypes.Callback<T...>
export type Hook<T...> = HookTypes.HookHandle<T...>
export type HookHandle<T...> = HookTypes.HookHandle<T...>

return {}
