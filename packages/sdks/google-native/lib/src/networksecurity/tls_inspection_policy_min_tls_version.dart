/// Optional. Minimum TLS version that the firewall should use when negotiating connections with both clients and servers. If this is not set, then the default value is to allow the broadest set of clients and servers (TLS 1.0 or higher). Setting this to more restrictive values may improve security, but may also prevent the firewall from connecting to some clients or servers. Note that Secure Web Proxy does not yet honor this field.
enum TlsInspectionPolicyMinTlsVersion {
  tlsVersionUnspecified("TLS_VERSION_UNSPECIFIED"),
  tls10("TLS_1_0"),
  tls11("TLS_1_1"),
  tls12("TLS_1_2"),
  tls13("TLS_1_3");

  const TlsInspectionPolicyMinTlsVersion(this.wireValue);
  final String wireValue;

  static TlsInspectionPolicyMinTlsVersion fromValue(String value) {
    for (final item in TlsInspectionPolicyMinTlsVersion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TlsInspectionPolicyMinTlsVersion value: $value');
  }
}
