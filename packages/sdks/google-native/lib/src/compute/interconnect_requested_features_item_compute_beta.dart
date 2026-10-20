import 'package:pulumi/pulumi.dart' as pulumi;

enum InterconnectRequestedFeaturesItemComputeBeta implements pulumi.PulumiEnum<String> {
  ifMacsec("IF_MACSEC");

  const InterconnectRequestedFeaturesItemComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static InterconnectRequestedFeaturesItemComputeBeta fromValue(String value) {
    for (final item in InterconnectRequestedFeaturesItemComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InterconnectRequestedFeaturesItemComputeBeta value: $value');
  }
}
