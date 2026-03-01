/// The selected network policy provider.
enum NetworkPolicyProvider {
  providerUnspecified("PROVIDER_UNSPECIFIED"),
  calico("CALICO");

  const NetworkPolicyProvider(this.value);
  final String value;

  static NetworkPolicyProvider fromValue(String value) {
    for (final item in NetworkPolicyProvider.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkPolicyProvider value: $value');
  }
}

