// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'single_target_dataset.dart';
import 'source_hierarchy_datasets.dart';

/// BigQuery destination configuration
class BigQueryDestinationConfig {
  /// The guaranteed data freshness (in seconds) when querying tables created by the stream. Editing this field will only affect new tables created in the future, but existing tables will not be impacted. Lower values mean that queries will return fresher data, but may result in higher cost.
  final pulumi.Input<String>? dataFreshness;
  /// Single destination dataset.
  final pulumi.Input<SingleTargetDataset>? singleTargetDataset;
  /// Source hierarchy datasets.
  final pulumi.Input<SourceHierarchyDatasets>? sourceHierarchyDatasets;

  /// Creates a new [BigQueryDestinationConfig].
  /// [dataFreshness] The guaranteed data freshness (in seconds) when querying tables created by the stream. Editing this field will only affect new tables created in the future, but existing tables will not be impacted. Lower values mean that queries will return fresher data, but may result in higher cost.
  /// [singleTargetDataset] Single destination dataset.
  /// [sourceHierarchyDatasets] Source hierarchy datasets.
  BigQueryDestinationConfig({
    this.dataFreshness,
    this.singleTargetDataset,
    this.sourceHierarchyDatasets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataFreshness': ?dataFreshness,
      'singleTargetDataset': ?pulumi.Input.mapOptionalInputValue<SingleTargetDataset, Map<String, dynamic>>(singleTargetDataset, (value) => value.toMap()),
      'sourceHierarchyDatasets': ?pulumi.Input.mapOptionalInputValue<SourceHierarchyDatasets, Map<String, dynamic>>(sourceHierarchyDatasets, (value) => value.toMap()),
    };
  }

  factory BigQueryDestinationConfig.fromMap(Map<String, dynamic> map) {
    return BigQueryDestinationConfig(
      dataFreshness: (() { final guardedValue = map['dataFreshness']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      singleTargetDataset: (() { final guardedValue = map['singleTargetDataset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SingleTargetDataset.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceHierarchyDatasets: (() { final guardedValue = map['sourceHierarchyDatasets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SourceHierarchyDatasets.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

