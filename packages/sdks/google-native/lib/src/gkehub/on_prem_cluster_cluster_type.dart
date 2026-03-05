/// Immutable. The on prem cluster's type.
enum OnPremClusterClusterType {
  clustertypeUnspecified("CLUSTERTYPE_UNSPECIFIED"),
  bootstrap("BOOTSTRAP"),
  hybrid("HYBRID"),
  standalone("STANDALONE"),
  user("USER");

  const OnPremClusterClusterType(this.wireValue);
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

