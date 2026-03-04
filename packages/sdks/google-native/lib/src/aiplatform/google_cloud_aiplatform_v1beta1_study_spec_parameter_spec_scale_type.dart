/// How the parameter should be scaled. Leave unset for `CATEGORICAL` parameters.
enum GoogleCloudAiplatformV1beta1StudySpecParameterSpecScaleType {
  scaleTypeUnspecified("SCALE_TYPE_UNSPECIFIED"),
  unitLinearScale("UNIT_LINEAR_SCALE"),
  unitLogScale("UNIT_LOG_SCALE"),
  unitReverseLogScale("UNIT_REVERSE_LOG_SCALE");

  const GoogleCloudAiplatformV1beta1StudySpecParameterSpecScaleType(
    this.wireValue,
  );
  final String wireValue;

  static GoogleCloudAiplatformV1beta1StudySpecParameterSpecScaleType fromValue(
    String value,
  ) {
    for (final item
        in GoogleCloudAiplatformV1beta1StudySpecParameterSpecScaleType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudAiplatformV1beta1StudySpecParameterSpecScaleType value: $value',
    );
  }
}
