import 'package:pulumi/pulumi.dart' as pulumi;

/// The encryption keySource (provider). Possible values (case-insensitive):  Microsoft.Storage, Microsoft.Keyvault
enum KeySource implements pulumi.PulumiEnum<String> {
  valueMicrosoftStorage("Microsoft.Storage"),
  valueMicrosoftKeyvault("Microsoft.Keyvault");

  const KeySource(this.wireValue);
  @override
  final String wireValue;

  static KeySource fromValue(String value) {
    for (final item in KeySource.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KeySource value: $value');
  }
}
