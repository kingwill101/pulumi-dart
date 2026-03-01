/// Required. The type of the parameter.
enum GoogleCloudMlV1StudyConfigParameterSpecType {
  parameterTypeUnspecified("PARAMETER_TYPE_UNSPECIFIED"),
  double("DOUBLE"),
  integer("INTEGER"),
  categorical("CATEGORICAL"),
  discrete("DISCRETE");

  const GoogleCloudMlV1StudyConfigParameterSpecType(this.value);
  final String value;

  static GoogleCloudMlV1StudyConfigParameterSpecType fromValue(String value) {
    for (final item in GoogleCloudMlV1StudyConfigParameterSpecType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudMlV1StudyConfigParameterSpecType value: $value');
  }
}

