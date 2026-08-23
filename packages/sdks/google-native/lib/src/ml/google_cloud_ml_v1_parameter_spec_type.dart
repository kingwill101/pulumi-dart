/// Required. The type of the parameter.
enum GoogleCloudMlV1ParameterSpecType {
  parameterTypeUnspecified("PARAMETER_TYPE_UNSPECIFIED"),
  double_("DOUBLE"),
  integer("INTEGER"),
  categorical("CATEGORICAL"),
  discrete("DISCRETE");

  const GoogleCloudMlV1ParameterSpecType(this.wireValue);
  final String wireValue;

  static GoogleCloudMlV1ParameterSpecType fromValue(String value) {
    for (final item in GoogleCloudMlV1ParameterSpecType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudMlV1ParameterSpecType value: $value');
  }
}
