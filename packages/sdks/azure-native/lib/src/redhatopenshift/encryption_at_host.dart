import 'package:pulumi/pulumi.dart' as pulumi;

/// Whether master virtual machines are encrypted at host.
enum EncryptionAtHost implements pulumi.PulumiEnum<String> {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const EncryptionAtHost(this.wireValue);
  @override
  final String wireValue;

  static EncryptionAtHost fromValue(String value) {
    for (final item in EncryptionAtHost.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EncryptionAtHost value: $value');
  }
}
