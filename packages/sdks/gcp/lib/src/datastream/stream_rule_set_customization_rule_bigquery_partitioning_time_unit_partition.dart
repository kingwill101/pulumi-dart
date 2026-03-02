// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamRuleSetCustomizationRuleBigqueryPartitioningTimeUnitPartition {
  /// The partitioning column.
  final pulumi.Input<String> column;
  /// Partition granularity.
  /// Possible values are: `PARTITIONING_TIME_GRANULARITY_UNSPECIFIED`, `PARTITIONING_TIME_GRANULARITY_HOUR`, `PARTITIONING_TIME_GRANULARITY_DAY`, `PARTITIONING_TIME_GRANULARITY_MONTH`, `PARTITIONING_TIME_GRANULARITY_YEAR`.
  final pulumi.Input<String>? partitioningTimeGranularity;

  /// Creates a new [StreamRuleSetCustomizationRuleBigqueryPartitioningTimeUnitPartition].
  /// [column] The partitioning column.
  /// [partitioningTimeGranularity] Partition granularity.
  StreamRuleSetCustomizationRuleBigqueryPartitioningTimeUnitPartition({
    required this.column,
    this.partitioningTimeGranularity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'column': column,
      'partitioningTimeGranularity': ?partitioningTimeGranularity,
    };
  }

  factory StreamRuleSetCustomizationRuleBigqueryPartitioningTimeUnitPartition.fromMap(Map<String, dynamic> map) {
    return StreamRuleSetCustomizationRuleBigqueryPartitioningTimeUnitPartition(
      column: (map['column'] as String).input(),
      partitioningTimeGranularity: map['partitioningTimeGranularity'] == null ? null : (map['partitioningTimeGranularity']! as String).input(),
    );
  }
}

