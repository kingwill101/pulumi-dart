/// Deprecated: This field will be ignored and should not be set. Customer's billing structure.
enum MultiClusterIngressFeatureSpecBilling {
  billingUnspecified("BILLING_UNSPECIFIED"),
  payAsYouGo("PAY_AS_YOU_GO"),
  anthosLicense("ANTHOS_LICENSE");

  const MultiClusterIngressFeatureSpecBilling(this.wireValue);
  final String wireValue;

  static MultiClusterIngressFeatureSpecBilling fromValue(String value) {
    for (final item in MultiClusterIngressFeatureSpecBilling.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MultiClusterIngressFeatureSpecBilling value: $value');
  }
}

