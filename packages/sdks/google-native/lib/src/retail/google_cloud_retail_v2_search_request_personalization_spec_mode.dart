import 'package:pulumi/pulumi.dart' as pulumi;

/// Defaults to Mode.AUTO.
enum GoogleCloudRetailV2SearchRequestPersonalizationSpecMode implements pulumi.PulumiEnum<String> {
  modeUnspecified("MODE_UNSPECIFIED"),
  auto("AUTO"),
  disabled("DISABLED");

  const GoogleCloudRetailV2SearchRequestPersonalizationSpecMode(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudRetailV2SearchRequestPersonalizationSpecMode fromValue(String value) {
    for (final item in GoogleCloudRetailV2SearchRequestPersonalizationSpecMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudRetailV2SearchRequestPersonalizationSpecMode value: $value');
  }
}
