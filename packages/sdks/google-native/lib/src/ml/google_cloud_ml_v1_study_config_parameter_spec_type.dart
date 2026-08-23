/// Required. The type of the parameter.
enum GoogleCloudMlV1StudyConfigParameterSpecType {
  parameterTypeUnspecified("PARAMETER_TYPE_UNSPECIFIED"),
  double_("DOUBLE"),
  integer("INTEGER"),
  categorical("CATEGORICAL"),
  discrete("DISCRETE");

  const GoogleCloudMlV1StudyConfigParameterSpecType(this.wireValue);
  final String wireValue;

  static GoogleCloudMlV1StudyConfigParameterSpecType fromValue(String value) {
    for (final item in GoogleCloudMlV1StudyConfigParameterSpecType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudMlV1StudyConfigParameterSpecType value: $value');
  }
}
