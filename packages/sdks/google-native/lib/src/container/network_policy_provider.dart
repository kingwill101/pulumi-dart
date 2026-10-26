import 'package:pulumi/pulumi.dart' as pulumi;

/// The selected network policy provider.
enum NetworkPolicyProvider implements pulumi.PulumiEnum<String> {
  providerUnspecified("PROVIDER_UNSPECIFIED"),
  calico("CALICO");

  const NetworkPolicyProvider(this.wireValue);
  @override
  final String wireValue;

  static NetworkPolicyProvider fromValue(String value) {
    for (final item in NetworkPolicyProvider.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkPolicyProvider value: $value');
  }
}
