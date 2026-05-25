--!strict
--!optimize 2

export type Callback<T...> = (T...) -> ()

export type HookHandle<T...> = {
	add: (self: HookHandle<T...>, callback: Callback<T...>) -> number,
	remove: (self: HookHandle<T...>, id: number) -> boolean,
	fire: (self: HookHandle<T...>, T...) -> (),
	clear: (self: HookHandle<T...>) -> (),
	size: (self: HookHandle<T...>) -> number,
	has: (self: HookHandle<T...>, id: number) -> boolean,
	deconstruct: (self: HookHandle<T...>) -> (),
}

export type Hook<T...> = HookHandle<T...> & {
	_nextId: number,
	_count: number,
	_activeCount: number,
	_firing: number,
	_dirty: boolean,
	_callbacks: { Callback<T...>? }?,
	_ids: { number }?,
	_indicesById: { [number]: number }?,
}

return {}
