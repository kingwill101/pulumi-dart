/// The desired datapath provider for the cluster.
enum ClusterUpdateDesiredDatapathProviderContainerV1beta1 {
  datapathProviderUnspecified("DATAPATH_PROVIDER_UNSPECIFIED"),
  legacyDatapath("LEGACY_DATAPATH"),
  advancedDatapath("ADVANCED_DATAPATH");

  const ClusterUpdateDesiredDatapathProviderContainerV1beta1(this.wireValue);
  final String wireValue;

  static ClusterUpdateDesiredDatapathProviderContainerV1beta1 fromValue(String value) {
    for (final item in ClusterUpdateDesiredDatapathProviderContainerV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterUpdateDesiredDatapathProviderContainerV1beta1 value: $value');
  }
}

