--!strict
--!optimize 2

export type Callback<T...> = (T...) -> ()

export type Hook<T...> = {
	add: (self: Hook<T...>, callback: Callback<T...>) -> number,
	remove: (self: Hook<T...>, id: number) -> boolean,
	fire: (self: Hook<T...>, T...) -> (),
	clear: (self: Hook<T...>) -> (),
	size: (self: Hook<T...>) -> number,
	has: (self: Hook<T...>, id: number) -> boolean,
	deconstruct: (self: Hook<T...>) -> (),
}

export type HookImpl<T...> = Hook<T...> & {
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
