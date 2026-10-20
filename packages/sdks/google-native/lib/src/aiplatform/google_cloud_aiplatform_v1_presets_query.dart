import 'package:pulumi/pulumi.dart' as pulumi;

/// Preset option controlling parameters for speed-precision trade-off when querying for examples. If omitted, defaults to `PRECISE`.
enum GoogleCloudAiplatformV1PresetsQuery implements pulumi.PulumiEnum<String> {
  precise("PRECISE"),
  fast("FAST");

  const GoogleCloudAiplatformV1PresetsQuery(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudAiplatformV1PresetsQuery fromValue(String value) {
    for (final item in GoogleCloudAiplatformV1PresetsQuery.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudAiplatformV1PresetsQuery value: $value');
  }
}
