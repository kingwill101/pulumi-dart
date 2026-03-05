// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamRuleSetCustomizationRuleBigqueryPartitioningIngestionTimePartition {
  /// Partition granularity.
  /// Possible values are: `PARTITIONING_TIME_GRANULARITY_UNSPECIFIED`, `PARTITIONING_TIME_GRANULARITY_HOUR`, `PARTITIONING_TIME_GRANULARITY_DAY`, `PARTITIONING_TIME_GRANULARITY_MONTH`, `PARTITIONING_TIME_GRANULARITY_YEAR`.
  final pulumi.Input<String>? partitioningTimeGranularity;

  /// Creates a new [StreamRuleSetCustomizationRuleBigqueryPartitioningIngestionTimePartition].
  /// [partitioningTimeGranularity] Partition granularity.
  StreamRuleSetCustomizationRuleBigqueryPartitioningIngestionTimePartition({
    this.partitioningTimeGranularity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partitioningTimeGranularity': ?partitioningTimeGranularity,
    };
  }

  factory StreamRuleSetCustomizationRuleBigqueryPartitioningIngestionTimePartition.fromMap(Map<String, dynamic> map) {
    return StreamRuleSetCustomizationRuleBigqueryPartitioningIngestionTimePartition(
      partitioningTimeGranularity: (() { final guardedValue = map['partitioningTimeGranularity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

