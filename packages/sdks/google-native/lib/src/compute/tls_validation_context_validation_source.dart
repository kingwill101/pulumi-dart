/// Defines how TLS certificates are obtained.
enum TlsValidationContextValidationSource {
  invalid("INVALID"),
  usePath("USE_PATH"),
  useSds("USE_SDS");

  const TlsValidationContextValidationSource(this.wireValue);
  final String wireValue;

  static TlsValidationContextValidationSource fromValue(String value) {
    for (final item in TlsValidationContextValidationSource.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown TlsValidationContextValidationSource value: $value',
    );
  }
}
