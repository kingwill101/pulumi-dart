import 'package:pulumi/pulumi.dart' as pulumi;

/// The preferred IP version to use in test evaluation. The connection monitor may choose to use a different version depending on other parameters.
enum PreferredIPVersion implements pulumi.PulumiEnum<String> {
  valueIPv4("IPv4"),
  valueIPv6("IPv6");

  const PreferredIPVersion(this.wireValue);
  @override
  final String wireValue;

  static PreferredIPVersion fromValue(String value) {
    for (final item in PreferredIPVersion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PreferredIPVersion value: $value');
  }
}
