/// The minimum version of SSL protocol that can be used by the clients to establish a connection with the load balancer. This can be one of TLS_1_0, TLS_1_1, TLS_1_2.
enum RegionSslPolicyMinTlsVersionComputeBeta {
  tls10("TLS_1_0"),
  tls11("TLS_1_1"),
  tls12("TLS_1_2");

  const RegionSslPolicyMinTlsVersionComputeBeta(this.wireValue);
  final String wireValue;

  static RegionSslPolicyMinTlsVersionComputeBeta fromValue(String value) {
    for (final item in RegionSslPolicyMinTlsVersionComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionSslPolicyMinTlsVersionComputeBeta value: $value');
  }
}

