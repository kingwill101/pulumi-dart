/// Deprecated: This field will be ignored and should not be set. Customer's billing structure.
enum MultiClusterIngressFeatureSpecBillingGkehubV1beta {
  billingUnspecified("BILLING_UNSPECIFIED"),
  payAsYouGo("PAY_AS_YOU_GO"),
  anthosLicense("ANTHOS_LICENSE");

  const MultiClusterIngressFeatureSpecBillingGkehubV1beta(this.value);
  final String value;

  static MultiClusterIngressFeatureSpecBillingGkehubV1beta fromValue(String value) {
    for (final item in MultiClusterIngressFeatureSpecBillingGkehubV1beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MultiClusterIngressFeatureSpecBillingGkehubV1beta value: $value');
  }
}

