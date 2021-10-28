//! Mouse button IDs.
//!
//! See glfw.setMouseButtonCallback for how these are used.

const c = @import("c.zig").c;

pub const MouseButton = enum(c_int) {
    one = c.GLFW_MOUSE_BUTTON_1,
    two = c.GLFW_MOUSE_BUTTON_2,
    three = c.GLFW_MOUSE_BUTTON_3,
    four = c.GLFW_MOUSE_BUTTON_4,
    five = c.GLFW_MOUSE_BUTTON_5,
    six = c.GLFW_MOUSE_BUTTON_6,
    seven = c.GLFW_MOUSE_BUTTON_7,
    eight = c.GLFW_MOUSE_BUTTON_8,

    pub inline fn last() MouseButton {
        return MouseButton.eight;
    }

    pub inline fn left() MouseButton {
        return MouseButton.one;
    }

    pub inline fn right() MouseButton {
        return MouseButton.two;
    }

    pub inline fn middle() MouseButton {
        return MouseButton.three;
    }
};
