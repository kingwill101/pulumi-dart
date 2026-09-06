import 'package:pulumi/pulumi.dart' as pulumi;

/// Upstream auth type enum.
enum UpstreamAuthType implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueManagedIdentity("ManagedIdentity");

  const UpstreamAuthType(this.wireValue);
  @override
  final String wireValue;

  static UpstreamAuthType fromValue(String value) {
    for (final item in UpstreamAuthType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UpstreamAuthType value: $value');
  }
}
