import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Immutable. Type of TensorboardTimeSeries value.
enum TimeSeriesValueType implements pulumi.PulumiEnum<String> {
  valueTypeUnspecified("VALUE_TYPE_UNSPECIFIED"),
  scalar("SCALAR"),
  tensor("TENSOR"),
  blobSequence("BLOB_SEQUENCE");

  const TimeSeriesValueType(this.wireValue);
  @override
  final String wireValue;

  static TimeSeriesValueType fromValue(String value) {
    for (final item in TimeSeriesValueType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TimeSeriesValueType value: $value');
  }
}
