// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Spec for a group of BigQuery tables with name pattern `[prefix]YYYYMMDD`. Context: https://cloud.google.com/bigquery/docs/partitioned-tables#partitioning_versus_sharding
class GoogleCloudDatacatalogV1beta1BigQueryDateShardedSpecResponse {
  /// The Data Catalog resource name of the dataset entry the current table belongs to, for example, `projects/{project_id}/locations/{location}/entrygroups/{entry_group_id}/entries/{entry_id}`.
  final pulumi.Input<String> dataset;
  /// Total number of shards.
  final pulumi.Input<String> shardCount;
  /// The table name prefix of the shards. The name of any given shard is `[table_prefix]YYYYMMDD`, for example, for shard `MyTable20180101`, the `table_prefix` is `MyTable`.
  final pulumi.Input<String> tablePrefix;

  /// Creates a new [GoogleCloudDatacatalogV1beta1BigQueryDateShardedSpecResponse].
  /// [dataset] The Data Catalog resource name of the dataset entry the current table belongs to, for example, `projects/{project_id}/locations/{location}/entrygroups/{entry_group_id}/entries/{entry_id}`.
  /// [shardCount] Total number of shards.
  /// [tablePrefix] The table name prefix of the shards. The name of any given shard is `[table_prefix]YYYYMMDD`, for example, for shard `MyTable20180101`, the `table_prefix` is `MyTable`.
  GoogleCloudDatacatalogV1beta1BigQueryDateShardedSpecResponse({
    required this.dataset,
    required this.shardCount,
    required this.tablePrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': dataset,
      'shardCount': shardCount,
      'tablePrefix': tablePrefix,
    };
  }

  factory GoogleCloudDatacatalogV1beta1BigQueryDateShardedSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1beta1BigQueryDateShardedSpecResponse(
      dataset: (map['dataset'] as String).input(),
      shardCount: (map['shardCount'] as String).input(),
      tablePrefix: (map['tablePrefix'] as String).input(),
    );
  }
}

