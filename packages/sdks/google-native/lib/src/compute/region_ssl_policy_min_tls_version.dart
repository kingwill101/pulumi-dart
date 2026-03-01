/// The minimum version of SSL protocol that can be used by the clients to establish a connection with the load balancer. This can be one of TLS_1_0, TLS_1_1, TLS_1_2.
enum RegionSslPolicyMinTlsVersion {
  tls10("TLS_1_0"),
  tls11("TLS_1_1"),
  tls12("TLS_1_2");

  const RegionSslPolicyMinTlsVersion(this.value);
  final String value;

  static RegionSslPolicyMinTlsVersion fromValue(String value) {
    for (final item in RegionSslPolicyMinTlsVersion.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionSslPolicyMinTlsVersion value: $value');
  }
}

