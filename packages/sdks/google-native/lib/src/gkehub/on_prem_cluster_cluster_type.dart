import 'package:pulumi/pulumi.dart' as pulumi;

/// Immutable. The on prem cluster's type.
enum OnPremClusterClusterType implements pulumi.PulumiEnum<String> {
  clustertypeUnspecified("CLUSTERTYPE_UNSPECIFIED"),
  bootstrap("BOOTSTRAP"),
  hybrid("HYBRID"),
  standalone("STANDALONE"),
  user("USER");

  const OnPremClusterClusterType(this.wireValue);
  @override
  final String wireValue;

  static OnPremClusterClusterType fromValue(String value) {
    for (final item in OnPremClusterClusterType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OnPremClusterClusterType value: $value');
  }
}
