--!strict
--!optimize 2

local HookTypes = require(script.hook)

export type Callback<T...> = HookTypes.Callback<T...>
export type Hook<T...> = HookTypes.Hook<T...>
export type HookImpl<T...> = HookTypes.HookImpl<T...>

return {}
