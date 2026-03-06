// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'single_target_dataset_response.dart';
import 'source_hierarchy_datasets_response.dart';

/// BigQuery destination configuration
class BigQueryDestinationConfigResponse {
  /// The guaranteed data freshness (in seconds) when querying tables created by the stream. Editing this field will only affect new tables created in the future, but existing tables will not be impacted. Lower values mean that queries will return fresher data, but may result in higher cost.
  final pulumi.Input<String> dataFreshness;
  /// Single destination dataset.
  final pulumi.Input<SingleTargetDatasetResponse> singleTargetDataset;
  /// Source hierarchy datasets.
  final pulumi.Input<SourceHierarchyDatasetsResponse> sourceHierarchyDatasets;

  /// Creates a new [BigQueryDestinationConfigResponse].
  /// [dataFreshness] The guaranteed data freshness (in seconds) when querying tables created by the stream. Editing this field will only affect new tables created in the future, but existing tables will not be impacted. Lower values mean that queries will return fresher data, but may result in higher cost.
  /// [singleTargetDataset] Single destination dataset.
  /// [sourceHierarchyDatasets] Source hierarchy datasets.
  const BigQueryDestinationConfigResponse({
    required this.dataFreshness,
    required this.singleTargetDataset,
    required this.sourceHierarchyDatasets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataFreshness': dataFreshness,
      'singleTargetDataset': pulumi.Input.mapInputValue<SingleTargetDatasetResponse, Map<String, dynamic>>(singleTargetDataset, (value) => value.toMap()),
      'sourceHierarchyDatasets': pulumi.Input.mapInputValue<SourceHierarchyDatasetsResponse, Map<String, dynamic>>(sourceHierarchyDatasets, (value) => value.toMap()),
    };
  }

  factory BigQueryDestinationConfigResponse.fromMap(Map<String, dynamic> map) {
    return BigQueryDestinationConfigResponse(
      dataFreshness: pulumi.Input.fromValue(map['dataFreshness'] as String),
      singleTargetDataset: pulumi.Input.fromValue(SingleTargetDatasetResponse.fromMap((map['singleTargetDataset']! as Map).cast<String, dynamic>())),
      sourceHierarchyDatasets: pulumi.Input.fromValue(SourceHierarchyDatasetsResponse.fromMap((map['sourceHierarchyDatasets']! as Map).cast<String, dynamic>())),
    );
  }
}

