import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The type of the parameter.
enum GoogleCloudMlV1ParameterSpecType implements pulumi.PulumiEnum<String> {
  parameterTypeUnspecified("PARAMETER_TYPE_UNSPECIFIED"),
  double_("DOUBLE"),
  integer("INTEGER"),
  categorical("CATEGORICAL"),
  discrete("DISCRETE");

  const GoogleCloudMlV1ParameterSpecType(this.wireValue);
  @override
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
