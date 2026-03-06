// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_rule_set_customization_rule_bigquery_partitioning_ingestion_time_partition.dart';
import 'stream_rule_set_customization_rule_bigquery_partitioning_integer_range_partition.dart';
import 'stream_rule_set_customization_rule_bigquery_partitioning_time_unit_partition.dart';

class StreamRuleSetCustomizationRuleBigqueryPartitioning {
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<StreamRuleSetCustomizationRuleBigqueryPartitioningIngestionTimePartition>? ingestionTimePartition;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<StreamRuleSetCustomizationRuleBigqueryPartitioningIntegerRangePartition>? integerRangePartition;
  /// If true, queries over the table require a partition filter.
  final pulumi.Input<bool>? requirePartitionFilter;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<StreamRuleSetCustomizationRuleBigqueryPartitioningTimeUnitPartition>? timeUnitPartition;

  /// Creates a new [StreamRuleSetCustomizationRuleBigqueryPartitioning].
  /// [ingestionTimePartition] A nested object resource.
  /// [integerRangePartition] A nested object resource.
  /// [requirePartitionFilter] If true, queries over the table require a partition filter.
  /// [timeUnitPartition] A nested object resource.
  const StreamRuleSetCustomizationRuleBigqueryPartitioning({
    this.ingestionTimePartition,
    this.integerRangePartition,
    this.requirePartitionFilter,
    this.timeUnitPartition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ingestionTimePartition': ?pulumi.Input.mapOptionalInputValue<StreamRuleSetCustomizationRuleBigqueryPartitioningIngestionTimePartition, Map<String, dynamic>>(ingestionTimePartition, (value) => value.toMap()),
      'integerRangePartition': ?pulumi.Input.mapOptionalInputValue<StreamRuleSetCustomizationRuleBigqueryPartitioningIntegerRangePartition, Map<String, dynamic>>(integerRangePartition, (value) => value.toMap()),
      'requirePartitionFilter': ?requirePartitionFilter,
      'timeUnitPartition': ?pulumi.Input.mapOptionalInputValue<StreamRuleSetCustomizationRuleBigqueryPartitioningTimeUnitPartition, Map<String, dynamic>>(timeUnitPartition, (value) => value.toMap()),
    };
  }

  factory StreamRuleSetCustomizationRuleBigqueryPartitioning.fromMap(Map<String, dynamic> map) {
    return StreamRuleSetCustomizationRuleBigqueryPartitioning(
      ingestionTimePartition: (() { final guardedValue = map['ingestionTimePartition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamRuleSetCustomizationRuleBigqueryPartitioningIngestionTimePartition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      integerRangePartition: (() { final guardedValue = map['integerRangePartition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamRuleSetCustomizationRuleBigqueryPartitioningIntegerRangePartition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      requirePartitionFilter: (() { final guardedValue = map['requirePartitionFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      timeUnitPartition: (() { final guardedValue = map['timeUnitPartition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamRuleSetCustomizationRuleBigqueryPartitioningTimeUnitPartition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

