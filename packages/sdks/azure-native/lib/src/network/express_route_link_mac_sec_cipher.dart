import 'package:pulumi/pulumi.dart' as pulumi;

/// Mac security cipher.
enum ExpressRouteLinkMacSecCipher implements pulumi.PulumiEnum<String> {
  valueGcmAes256("GcmAes256"),
  valueGcmAes128("GcmAes128"),
  valueGcmAesXpn128("GcmAesXpn128"),
  valueGcmAesXpn256("GcmAesXpn256");

  const ExpressRouteLinkMacSecCipher(this.wireValue);
  @override
  final String wireValue;

  static ExpressRouteLinkMacSecCipher fromValue(String value) {
    for (final item in ExpressRouteLinkMacSecCipher.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExpressRouteLinkMacSecCipher value: $value');
  }
}
