#== 
    Module for heatwave
==#

module Heatwave

# link up these bad boys
Libdl.dlopen("lib/libsfml-system", Libdl.RTLD_GLOBAL)
Libdl.dlopen("lib/libsfml-window", Libdl.RTLD_GLOBAL)
Libdl.dlopen("lib/libsfml-graphics", Libdl.RTLD_GLOBAL)
Libdl.dlopen("lib/libchw", Libdl.RTLD_GLOBAL)

using Reactive
using Lazy

include("utils.jl")

include("state_object.jl")
export StateObject
export pos, pos!, char

include("carrier.jl")
export CarrierGrid, CarrierList
export Carrier, CarrierState
export char, show
export tick!, flush!

include("state_render_grid.jl")
export StateRenderGrid
export generate!

include("buffer_cursor.jl")
export BufferCursor
export write!, advance!, backspace!, at, at!

include("event_dispatcher.jl")
export EventDispatcher
export fire!, add_callback!, remove_callback!, getindex

include("sfml.jl")
export Vector2, Vector2i, Vector2u, Vector2f
export +, -, dot, norm
export Color
export +, -, *

include("sfml_events.jl")
export Event, EventType, KeyCodes
export KeyEvent
export TextEvent
export MouseMoveEvent
export MouseButtonEvent
export MouseWheelEvent
export JoystickButtonEvent
export JoystickConnectEvent
export SizeEvent

include("sfml_event_router.jl")
export SFMLEventRouter
export fire!

include("text_entry_buffer.jl")
export TextEntryBuffer
export bind!, unbind!, listening, listening!

include("terminal.jl")
export Terminal
export show, size, length, update
export TermSubArray
export TerminalView
export show, size, length, write!

include("game.jl")
export Game
export tick, stop, start, close, get_term_dims, get_terminal

end
