import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. How the parameter should be scaled to the hypercube. Leave unset for categorical parameters. Some kind of scaling is strongly recommended for real or integral parameters (e.g., `UNIT_LINEAR_SCALE`).
enum GoogleCloudMlV1ParameterSpecScaleType implements pulumi.PulumiEnum<String> {
  none("NONE"),
  unitLinearScale("UNIT_LINEAR_SCALE"),
  unitLogScale("UNIT_LOG_SCALE"),
  unitReverseLogScale("UNIT_REVERSE_LOG_SCALE");

  const GoogleCloudMlV1ParameterSpecScaleType(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudMlV1ParameterSpecScaleType fromValue(String value) {
    for (final item in GoogleCloudMlV1ParameterSpecScaleType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudMlV1ParameterSpecScaleType value: $value');
  }
}
