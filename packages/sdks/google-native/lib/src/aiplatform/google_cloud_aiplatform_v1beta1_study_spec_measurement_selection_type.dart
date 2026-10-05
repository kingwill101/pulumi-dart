import 'package:pulumi/pulumi.dart' as pulumi;

/// Describe which measurement selection type will be used
enum GoogleCloudAiplatformV1beta1StudySpecMeasurementSelectionType implements pulumi.PulumiEnum<String> {
  measurementSelectionTypeUnspecified("MEASUREMENT_SELECTION_TYPE_UNSPECIFIED"),
  lastMeasurement("LAST_MEASUREMENT"),
  bestMeasurement("BEST_MEASUREMENT");

  const GoogleCloudAiplatformV1beta1StudySpecMeasurementSelectionType(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudAiplatformV1beta1StudySpecMeasurementSelectionType fromValue(String value) {
    for (final item in GoogleCloudAiplatformV1beta1StudySpecMeasurementSelectionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudAiplatformV1beta1StudySpecMeasurementSelectionType value: $value');
  }
}
