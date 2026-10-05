import 'package:pulumi/pulumi.dart' as pulumi;

/// Immutable. The on prem cluster's type.
enum OnPremClusterClusterTypeGkehubV1beta implements pulumi.PulumiEnum<String> {
  clustertypeUnspecified("CLUSTERTYPE_UNSPECIFIED"),
  bootstrap("BOOTSTRAP"),
  hybrid("HYBRID"),
  standalone("STANDALONE"),
  user("USER");

  const OnPremClusterClusterTypeGkehubV1beta(this.wireValue);
  @override
  final String wireValue;

  static OnPremClusterClusterTypeGkehubV1beta fromValue(String value) {
    for (final item in OnPremClusterClusterTypeGkehubV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OnPremClusterClusterTypeGkehubV1beta value: $value');
  }
}
