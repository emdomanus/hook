--!strict
--!optimize 2
--!native

local HookComponent = require(script.components.hook.shared.hook)
local Types = require(script.types)

export type Callback<T...> = Types.Callback<T...>
export type Hook<T...> = Types.Hook<T...>

return {
	new = HookComponent.new :: <T...>() -> Types.Hook<T...>,
}
