import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the sandbox to use for the node.
enum SandboxConfigTypeContainerV1beta1 implements pulumi.PulumiEnum<String> {
  unspecified("UNSPECIFIED"),
  gvisor("GVISOR");

  const SandboxConfigTypeContainerV1beta1(this.wireValue);
  @override
  final String wireValue;

  static SandboxConfigTypeContainerV1beta1 fromValue(String value) {
    for (final item in SandboxConfigTypeContainerV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SandboxConfigTypeContainerV1beta1 value: $value');
  }
}
