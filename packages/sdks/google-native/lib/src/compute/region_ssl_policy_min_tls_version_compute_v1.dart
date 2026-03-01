/// The minimum version of SSL protocol that can be used by the clients to establish a connection with the load balancer. This can be one of TLS_1_0, TLS_1_1, TLS_1_2.
enum RegionSslPolicyMinTlsVersionComputeV1 {
  tls10("TLS_1_0"),
  tls11("TLS_1_1"),
  tls12("TLS_1_2");

  const RegionSslPolicyMinTlsVersionComputeV1(this.value);
  final String value;

  static RegionSslPolicyMinTlsVersionComputeV1 fromValue(String value) {
    for (final item in RegionSslPolicyMinTlsVersionComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionSslPolicyMinTlsVersionComputeV1 value: $value');
  }
}

