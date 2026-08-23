/// Field Deprecated. The field was previously optional, now it will have no defined behavior and will be ignored. The indicator of whether or not to disable IPAM allocation on the network attachment definition injected into the Hybrid AKS Cluster.
enum HybridAksIpamEnabled {
  valueTrue("True"),
  valueFalse("False");

  const HybridAksIpamEnabled(this.wireValue);
  final String wireValue;

  static HybridAksIpamEnabled fromValue(String value) {
    for (final item in HybridAksIpamEnabled.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HybridAksIpamEnabled value: $value');
  }
}
