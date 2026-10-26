import 'package:pulumi/pulumi.dart' as pulumi;

/// Immutable. The on prem cluster's type.
enum OnPremClusterClusterTypeGkehubV1alpha2 implements pulumi.PulumiEnum<String> {
  clustertypeUnspecified("CLUSTERTYPE_UNSPECIFIED"),
  bootstrap("BOOTSTRAP"),
  hybrid("HYBRID"),
  standalone("STANDALONE"),
  user("USER");

  const OnPremClusterClusterTypeGkehubV1alpha2(this.wireValue);
  @override
  final String wireValue;

  static OnPremClusterClusterTypeGkehubV1alpha2 fromValue(String value) {
    for (final item in OnPremClusterClusterTypeGkehubV1alpha2.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OnPremClusterClusterTypeGkehubV1alpha2 value: $value');
  }
}
