/// Required. Immutable. Type of TensorboardTimeSeries value.
enum TimeSeriesValueType {
  valueTypeUnspecified("VALUE_TYPE_UNSPECIFIED"),
  scalar("SCALAR"),
  tensor("TENSOR"),
  blobSequence("BLOB_SEQUENCE");

  const TimeSeriesValueType(this.value);
  final String value;

  static TimeSeriesValueType fromValue(String value) {
    for (final item in TimeSeriesValueType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TimeSeriesValueType value: $value');
  }
}

