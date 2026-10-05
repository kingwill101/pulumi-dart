import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of partitioning.
enum TimePartitioningType implements pulumi.PulumiEnum<String> {
  partitionTypeUnspecified("PARTITION_TYPE_UNSPECIFIED"),
  hour("HOUR"),
  day("DAY"),
  month("MONTH"),
  year("YEAR");

  const TimePartitioningType(this.wireValue);
  @override
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
