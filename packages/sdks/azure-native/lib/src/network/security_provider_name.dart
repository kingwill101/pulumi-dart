import 'package:pulumi/pulumi.dart' as pulumi;

/// The security provider name.
enum SecurityProviderName implements pulumi.PulumiEnum<String> {
  valueZScaler("ZScaler"),
  valueIBoss("IBoss"),
  valueCheckpoint("Checkpoint");

  const SecurityProviderName(this.wireValue);
  @override
  final String wireValue;

  static SecurityProviderName fromValue(String value) {
    for (final item in SecurityProviderName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityProviderName value: $value');
  }
}
