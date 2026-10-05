import 'package:pulumi/pulumi.dart' as pulumi;

/// Defaults to Mode.AUTO.
enum GoogleCloudRetailV2alphaSearchRequestPersonalizationSpecMode implements pulumi.PulumiEnum<String> {
  modeUnspecified("MODE_UNSPECIFIED"),
  auto("AUTO"),
  disabled("DISABLED");

  const GoogleCloudRetailV2alphaSearchRequestPersonalizationSpecMode(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudRetailV2alphaSearchRequestPersonalizationSpecMode fromValue(String value) {
    for (final item in GoogleCloudRetailV2alphaSearchRequestPersonalizationSpecMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudRetailV2alphaSearchRequestPersonalizationSpecMode value: $value');
  }
}
