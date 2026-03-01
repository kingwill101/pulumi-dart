// ignore_for_file: unused_element, unnecessary_cast

import 'stream_destination_config_bigquery_destination_config_blmt_config.dart';
import 'stream_destination_config_bigquery_destination_config_single_target_dataset.dart';
import 'stream_destination_config_bigquery_destination_config_source_hierarchy_datasets.dart';

class StreamDestinationConfigBigqueryDestinationConfig {
  /// AppendOnly mode defines that the stream of changes (INSERT, UPDATE-INSERT, UPDATE-DELETE and DELETE
  /// events) to a source table will be written to the destination Google BigQuery table, retaining the
  /// historical state of the data.
  final Map<String, dynamic>? appendOnly;
  /// BigLake Managed Tables configuration for BigQuery streams.
  /// Structure is documented below.
  final StreamDestinationConfigBigqueryDestinationConfigBlmtConfig? blmtConfig;
  /// The guaranteed data freshness (in seconds) when querying tables created by the stream.
  /// Editing this field will only affect new tables created in the future, but existing tables
  /// will not be impacted. Lower values mean that queries will return fresher data, but may result in higher cost.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s". Defaults to 900s.
  final String? dataFreshness;
  /// Merge mode defines that all changes to a table will be merged at the destination Google BigQuery
  /// table. This is the default write mode. When selected, BigQuery reflects the way the data is stored
  /// in the source database. With Merge mode, no historical record of the change events is kept.
  final Map<String, dynamic>? merge;
  /// A single target dataset to which all data will be streamed.
  /// Structure is documented below.
  final StreamDestinationConfigBigqueryDestinationConfigSingleTargetDataset? singleTargetDataset;
  /// Destination datasets are created so that hierarchy of the destination data objects matches the source hierarchy.
  /// Structure is documented below.
  final StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasets? sourceHierarchyDatasets;

  /// Creates a new [StreamDestinationConfigBigqueryDestinationConfig].
  /// [appendOnly] AppendOnly mode defines that the stream of changes (INSERT, UPDATE-INSERT, UPDATE-DELETE and DELETE
  /// [blmtConfig] BigLake Managed Tables configuration for BigQuery streams.
  /// [dataFreshness] The guaranteed data freshness (in seconds) when querying tables created by the stream.
  /// [merge] Merge mode defines that all changes to a table will be merged at the destination Google BigQuery
  /// [singleTargetDataset] A single target dataset to which all data will be streamed.
  /// [sourceHierarchyDatasets] Destination datasets are created so that hierarchy of the destination data objects matches the source hierarchy.
  StreamDestinationConfigBigqueryDestinationConfig({
    this.appendOnly,
    this.blmtConfig,
    this.dataFreshness,
    this.merge,
    this.singleTargetDataset,
    this.sourceHierarchyDatasets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appendOnly': ?appendOnly,
      'blmtConfig': ?blmtConfig == null ? null : blmtConfig!.toMap(),
      'dataFreshness': ?dataFreshness,
      'merge': ?merge,
      'singleTargetDataset': ?singleTargetDataset == null ? null : singleTargetDataset!.toMap(),
      'sourceHierarchyDatasets': ?sourceHierarchyDatasets == null ? null : sourceHierarchyDatasets!.toMap(),
    };
  }

  factory StreamDestinationConfigBigqueryDestinationConfig.fromMap(Map<String, dynamic> map) {
    return StreamDestinationConfigBigqueryDestinationConfig(
      appendOnly: map['appendOnly'] == null ? null : (map['appendOnly'] as Map).cast<String, dynamic>(),
      blmtConfig: map['blmtConfig'] == null ? null : StreamDestinationConfigBigqueryDestinationConfigBlmtConfig.fromMap((map['blmtConfig'] as Map).cast<String, dynamic>()),
      dataFreshness: map['dataFreshness'] == null ? null : map['dataFreshness'] as String,
      merge: map['merge'] == null ? null : (map['merge'] as Map).cast<String, dynamic>(),
      singleTargetDataset: map['singleTargetDataset'] == null ? null : StreamDestinationConfigBigqueryDestinationConfigSingleTargetDataset.fromMap((map['singleTargetDataset'] as Map).cast<String, dynamic>()),
      sourceHierarchyDatasets: map['sourceHierarchyDatasets'] == null ? null : StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasets.fromMap((map['sourceHierarchyDatasets'] as Map).cast<String, dynamic>()),
    );
  }
}

