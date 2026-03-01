/// Type of the sandbox to use for the node.
enum SandboxConfigType {
  unspecified("UNSPECIFIED"),
  gvisor("GVISOR");

  const SandboxConfigType(this.value);
  final String value;

  static SandboxConfigType fromValue(String value) {
    for (final item in SandboxConfigType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SandboxConfigType value: $value');
  }
}

