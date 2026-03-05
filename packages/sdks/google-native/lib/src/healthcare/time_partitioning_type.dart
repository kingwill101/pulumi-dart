/// Type of partitioning.
enum TimePartitioningType {
  partitionTypeUnspecified("PARTITION_TYPE_UNSPECIFIED"),
  hour("HOUR"),
  day("DAY"),
  month("MONTH"),
  year("YEAR");

  const TimePartitioningType(this.wireValue);
  final String wireValue;

  static TimePartitioningType fromValue(String value) {
    for (final item in TimePartitioningType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TimePartitioningType value: $value');
  }
}

