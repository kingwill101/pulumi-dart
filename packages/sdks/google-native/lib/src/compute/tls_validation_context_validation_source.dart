import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines how TLS certificates are obtained.
enum TlsValidationContextValidationSource implements pulumi.PulumiEnum<String> {
  invalid("INVALID"),
  usePath("USE_PATH"),
  useSds("USE_SDS");

  const TlsValidationContextValidationSource(this.wireValue);
  @override
  final String wireValue;

  static TlsValidationContextValidationSource fromValue(String value) {
    for (final item in TlsValidationContextValidationSource.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TlsValidationContextValidationSource value: $value');
  }
}
