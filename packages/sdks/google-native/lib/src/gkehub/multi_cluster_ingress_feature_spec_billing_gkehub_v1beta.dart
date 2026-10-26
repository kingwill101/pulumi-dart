import 'package:pulumi/pulumi.dart' as pulumi;

/// Deprecated: This field will be ignored and should not be set. Customer's billing structure.
enum MultiClusterIngressFeatureSpecBillingGkehubV1beta implements pulumi.PulumiEnum<String> {
  billingUnspecified("BILLING_UNSPECIFIED"),
  payAsYouGo("PAY_AS_YOU_GO"),
  anthosLicense("ANTHOS_LICENSE");

  const MultiClusterIngressFeatureSpecBillingGkehubV1beta(this.wireValue);
  @override
  final String wireValue;

  static MultiClusterIngressFeatureSpecBillingGkehubV1beta fromValue(String value) {
    for (final item in MultiClusterIngressFeatureSpecBillingGkehubV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MultiClusterIngressFeatureSpecBillingGkehubV1beta value: $value');
  }
}
