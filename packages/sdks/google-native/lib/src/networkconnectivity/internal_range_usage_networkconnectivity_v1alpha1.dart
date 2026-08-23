/// The type of usage set for this internal range.
enum InternalRangeUsageNetworkconnectivityV1alpha1 {
  usageUnspecified("USAGE_UNSPECIFIED"),
  forVpc("FOR_VPC"),
  externalToVpc("EXTERNAL_TO_VPC");

  const InternalRangeUsageNetworkconnectivityV1alpha1(this.wireValue);
  final String wireValue;

  static InternalRangeUsageNetworkconnectivityV1alpha1 fromValue(String value) {
    for (final item in InternalRangeUsageNetworkconnectivityV1alpha1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InternalRangeUsageNetworkconnectivityV1alpha1 value: $value');
  }
}
