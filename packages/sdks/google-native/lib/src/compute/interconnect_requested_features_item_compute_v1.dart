import 'package:pulumi/pulumi.dart' as pulumi;

enum InterconnectRequestedFeaturesItemComputeV1 implements pulumi.PulumiEnum<String> {
  ifMacsec("IF_MACSEC");

  const InterconnectRequestedFeaturesItemComputeV1(this.wireValue);
  @override
  final String wireValue;

  static InterconnectRequestedFeaturesItemComputeV1 fromValue(String value) {
    for (final item in InterconnectRequestedFeaturesItemComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InterconnectRequestedFeaturesItemComputeV1 value: $value');
  }
}
