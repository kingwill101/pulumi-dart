import 'package:pulumi/pulumi.dart' as pulumi;

enum InterconnectRequestedFeaturesItem implements pulumi.PulumiEnum<String> {
  ifMacsec("IF_MACSEC");

  const InterconnectRequestedFeaturesItem(this.wireValue);
  @override
  final String wireValue;

  static InterconnectRequestedFeaturesItem fromValue(String value) {
    for (final item in InterconnectRequestedFeaturesItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InterconnectRequestedFeaturesItem value: $value');
  }
}
