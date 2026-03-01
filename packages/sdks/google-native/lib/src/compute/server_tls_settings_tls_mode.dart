/// Indicates whether connections should be secured using TLS. The value of this field determines how TLS is enforced. This field can be set to one of the following: - SIMPLE Secure connections with standard TLS semantics. - MUTUAL Secure connections to the backends using mutual TLS by presenting client certificates for authentication.
enum ServerTlsSettingsTlsMode {
  invalid("INVALID"),
  mutual("MUTUAL"),
  simple("SIMPLE");

  const ServerTlsSettingsTlsMode(this.value);
  final String value;

  static ServerTlsSettingsTlsMode fromValue(String value) {
    for (final item in ServerTlsSettingsTlsMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServerTlsSettingsTlsMode value: $value');
  }
}

