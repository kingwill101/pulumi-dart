/// The resource access policy.
enum ResourceAccessPolicy {
  valueNotSpecified("NotSpecified"),
  valueAcisReadAllowed("AcisReadAllowed"),
  valueAcisActionAllowed("AcisActionAllowed");

  const ResourceAccessPolicy(this.wireValue);
  final String wireValue;

  static ResourceAccessPolicy fromValue(String value) {
    for (final item in ResourceAccessPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceAccessPolicy value: $value');
  }
}
