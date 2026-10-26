import 'package:pulumi/pulumi.dart' as pulumi;

/// Deprecated: This field will be ignored and should not be set. Customer's billing structure.
enum MultiClusterIngressFeatureSpecBilling implements pulumi.PulumiEnum<String> {
  billingUnspecified("BILLING_UNSPECIFIED"),
  payAsYouGo("PAY_AS_YOU_GO"),
  anthosLicense("ANTHOS_LICENSE");

  const MultiClusterIngressFeatureSpecBilling(this.wireValue);
  @override
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
