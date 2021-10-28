//! Key and button actions

const c = @import("c.zig").c;


pub const Action = enum(c_int) {
    release = RawAction.release,
    press = RawAction.press,
    repeat = RawAction.repeat,
};

/// Actions as they are defined in glfw
pub const RawAction = struct {
    /// The key or mouse button was released.
    pub const release = c.GLFW_RELEASE;

    /// The key or mouse button was pressed.
    pub const press = c.GLFW_PRESS;

    /// The key was held down until it repeated.
    pub const repeat = c.GLFW_REPEAT;
};
