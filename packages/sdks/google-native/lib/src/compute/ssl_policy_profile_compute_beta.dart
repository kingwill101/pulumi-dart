/// Profile specifies the set of SSL features that can be used by the load balancer when negotiating SSL with clients. This can be one of COMPATIBLE, MODERN, RESTRICTED, or CUSTOM. If using CUSTOM, the set of SSL features to enable must be specified in the customFeatures field.
enum SslPolicyProfileComputeBeta {
  compatible("COMPATIBLE"),
  custom("CUSTOM"),
  modern("MODERN"),
  restricted("RESTRICTED");

  const SslPolicyProfileComputeBeta(this.wireValue);
  final String wireValue;

  static SslPolicyProfileComputeBeta fromValue(String value) {
    for (final item in SslPolicyProfileComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslPolicyProfileComputeBeta value: $value');
  }
}
