import 'package:pulumi/pulumi.dart' as pulumi;

/// The kind (type) of Enterprise Policy.
enum EnterprisePolicyKind implements pulumi.PulumiEnum<String> {
  lockbox("Lockbox"),
  privateEndpoint("PrivateEndpoint"),
  encryption("Encryption"),
  networkInjection("NetworkInjection"),
  identity("Identity");

  const EnterprisePolicyKind(this.wireValue);
  @override
  final String wireValue;

  static EnterprisePolicyKind fromValue(String value) {
    for (final item in EnterprisePolicyKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnterprisePolicyKind value: $value');
  }
}
