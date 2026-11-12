// No symbol from ServiceManagement is referenced, as with objc2, which looks
// Objective-C classes up by name at runtime. The framework must still be linked.
#[link(name = "ServiceManagement", kind = "framework")]
extern "C" {}

fn main() {}
