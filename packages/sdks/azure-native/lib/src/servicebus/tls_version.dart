import 'package:pulumi/pulumi.dart' as pulumi;

/// The minimum TLS version for the cluster to support, e.g. '1.2'
enum TlsVersion implements pulumi.PulumiEnum<String> {
  resource10("1.0"),
  resource11("1.1"),
  resource12("1.2"),
  resource13("1.3");

  const TlsVersion(this.wireValue);
  @override
  final String wireValue;

  static TlsVersion fromValue(String value) {
    for (final item in TlsVersion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TlsVersion value: $value');
  }
}
