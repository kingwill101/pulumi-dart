/// Type of the sandbox to use for the node.
enum SandboxConfigType {
  unspecified("UNSPECIFIED"),
  gvisor("GVISOR");

  const SandboxConfigType(this.wireValue);
  final String wireValue;

  static SandboxConfigType fromValue(String value) {
    for (final item in SandboxConfigType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SandboxConfigType value: $value');
  }
}
