import 'package:pulumi/pulumi.dart' as pulumi;

/// The selected network policy provider.
enum NetworkPolicyProviderContainerV1beta1 implements pulumi.PulumiEnum<String> {
  providerUnspecified("PROVIDER_UNSPECIFIED"),
  calico("CALICO");

  const NetworkPolicyProviderContainerV1beta1(this.wireValue);
  @override
  final String wireValue;

  static NetworkPolicyProviderContainerV1beta1 fromValue(String value) {
    for (final item in NetworkPolicyProviderContainerV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkPolicyProviderContainerV1beta1 value: $value');
  }
}
