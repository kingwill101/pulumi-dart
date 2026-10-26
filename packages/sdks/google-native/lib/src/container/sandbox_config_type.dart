import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the sandbox to use for the node.
enum SandboxConfigType implements pulumi.PulumiEnum<String> {
  unspecified("UNSPECIFIED"),
  gvisor("GVISOR");

  const SandboxConfigType(this.wireValue);
  @override
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
