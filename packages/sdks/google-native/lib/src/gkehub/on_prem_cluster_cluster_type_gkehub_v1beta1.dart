import 'package:pulumi/pulumi.dart' as pulumi;

/// Immutable. The on prem cluster's type.
enum OnPremClusterClusterTypeGkehubV1beta1 implements pulumi.PulumiEnum<String> {
  clustertypeUnspecified("CLUSTERTYPE_UNSPECIFIED"),
  bootstrap("BOOTSTRAP"),
  hybrid("HYBRID"),
  standalone("STANDALONE"),
  user("USER");

  const OnPremClusterClusterTypeGkehubV1beta1(this.wireValue);
  @override
  final String wireValue;

  static OnPremClusterClusterTypeGkehubV1beta1 fromValue(String value) {
    for (final item in OnPremClusterClusterTypeGkehubV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OnPremClusterClusterTypeGkehubV1beta1 value: $value');
  }
}
