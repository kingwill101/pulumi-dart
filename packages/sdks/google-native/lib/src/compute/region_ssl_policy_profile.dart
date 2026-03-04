/// Profile specifies the set of SSL features that can be used by the load balancer when negotiating SSL with clients. This can be one of COMPATIBLE, MODERN, RESTRICTED, or CUSTOM. If using CUSTOM, the set of SSL features to enable must be specified in the customFeatures field.
enum RegionSslPolicyProfile {
  compatible("COMPATIBLE"),
  custom("CUSTOM"),
  modern("MODERN"),
  restricted("RESTRICTED");

  const RegionSslPolicyProfile(this.wireValue);
  final String wireValue;

  static RegionSslPolicyProfile fromValue(String value) {
    for (final item in RegionSslPolicyProfile.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionSslPolicyProfile value: $value');
  }
}
