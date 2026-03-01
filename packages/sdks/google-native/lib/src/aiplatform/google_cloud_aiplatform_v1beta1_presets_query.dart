/// Preset option controlling parameters for speed-precision trade-off when querying for examples. If omitted, defaults to `PRECISE`.
enum GoogleCloudAiplatformV1beta1PresetsQuery {
  precise("PRECISE"),
  fast("FAST");

  const GoogleCloudAiplatformV1beta1PresetsQuery(this.value);
  final String value;

  static GoogleCloudAiplatformV1beta1PresetsQuery fromValue(String value) {
    for (final item in GoogleCloudAiplatformV1beta1PresetsQuery.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudAiplatformV1beta1PresetsQuery value: $value');
  }
}

