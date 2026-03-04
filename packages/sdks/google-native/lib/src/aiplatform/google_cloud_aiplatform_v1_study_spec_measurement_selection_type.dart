/// Describe which measurement selection type will be used
enum GoogleCloudAiplatformV1StudySpecMeasurementSelectionType {
  measurementSelectionTypeUnspecified("MEASUREMENT_SELECTION_TYPE_UNSPECIFIED"),
  lastMeasurement("LAST_MEASUREMENT"),
  bestMeasurement("BEST_MEASUREMENT");

  const GoogleCloudAiplatformV1StudySpecMeasurementSelectionType(
    this.wireValue,
  );
  final String wireValue;

  static GoogleCloudAiplatformV1StudySpecMeasurementSelectionType fromValue(
    String value,
  ) {
    for (final item
        in GoogleCloudAiplatformV1StudySpecMeasurementSelectionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudAiplatformV1StudySpecMeasurementSelectionType value: $value',
    );
  }
}
