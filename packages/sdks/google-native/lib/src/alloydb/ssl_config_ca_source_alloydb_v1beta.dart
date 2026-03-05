/// Optional. Certificate Authority (CA) source. Only CA_SOURCE_MANAGED is supported currently, and is the default value.
enum SslConfigCaSourceAlloydbV1beta {
  caSourceUnspecified("CA_SOURCE_UNSPECIFIED"),
  caSourceManaged("CA_SOURCE_MANAGED");

  const SslConfigCaSourceAlloydbV1beta(this.wireValue);
  final String wireValue;

  static SslConfigCaSourceAlloydbV1beta fromValue(String value) {
    for (final item in SslConfigCaSourceAlloydbV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslConfigCaSourceAlloydbV1beta value: $value');
  }
}

