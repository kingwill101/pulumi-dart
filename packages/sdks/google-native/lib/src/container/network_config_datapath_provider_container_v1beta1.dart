/// The desired datapath provider for this cluster. By default, uses the IPTables-based kube-proxy implementation.
enum NetworkConfigDatapathProviderContainerV1beta1 {
  datapathProviderUnspecified("DATAPATH_PROVIDER_UNSPECIFIED"),
  legacyDatapath("LEGACY_DATAPATH"),
  advancedDatapath("ADVANCED_DATAPATH");

  const NetworkConfigDatapathProviderContainerV1beta1(this.value);
  final String value;

  static NetworkConfigDatapathProviderContainerV1beta1 fromValue(String value) {
    for (final item in NetworkConfigDatapathProviderContainerV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkConfigDatapathProviderContainerV1beta1 value: $value');
  }
}

