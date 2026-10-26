import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of partitioning.
enum TimePartitioningTypeHealthcareV1beta1 implements pulumi.PulumiEnum<String> {
  partitionTypeUnspecified("PARTITION_TYPE_UNSPECIFIED"),
  hour("HOUR"),
  day("DAY"),
  month("MONTH"),
  year("YEAR");

  const TimePartitioningTypeHealthcareV1beta1(this.wireValue);
  @override
  final String wireValue;

  static TimePartitioningTypeHealthcareV1beta1 fromValue(String value) {
    for (final item in TimePartitioningTypeHealthcareV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TimePartitioningTypeHealthcareV1beta1 value: $value');
  }
}
