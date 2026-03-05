/// Required. Immutable. Type of TensorboardTimeSeries value.
enum TimeSeriesValueType {
  valueTypeUnspecified("VALUE_TYPE_UNSPECIFIED"),
  scalar("SCALAR"),
  tensor("TENSOR"),
  blobSequence("BLOB_SEQUENCE");

  const TimeSeriesValueType(this.wireValue);
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

