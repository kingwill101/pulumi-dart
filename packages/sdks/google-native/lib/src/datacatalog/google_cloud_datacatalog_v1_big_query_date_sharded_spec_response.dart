// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specification for a group of BigQuery tables with the `[prefix]YYYYMMDD` name pattern. For more information, see [Introduction to partitioned tables] (https://cloud.google.com/bigquery/docs/partitioned-tables#partitioning_versus_sharding).
class GoogleCloudDatacatalogV1BigQueryDateShardedSpecResponse {
  /// The Data Catalog resource name of the dataset entry the current table belongs to. For example: `projects/{PROJECT_ID}/locations/{LOCATION}/entrygroups/{ENTRY_GROUP_ID}/entries/{ENTRY_ID}`.
  final pulumi.Input<String> dataset;
  /// BigQuery resource name of the latest shard.
  final pulumi.Input<String> latestShardResource;
  /// Total number of shards.
  final pulumi.Input<String> shardCount;
  /// The table name prefix of the shards. The name of any given shard is `[table_prefix]YYYYMMDD`. For example, for the `MyTable20180101` shard, the `table_prefix` is `MyTable`.
  final pulumi.Input<String> tablePrefix;

  /// Creates a new [GoogleCloudDatacatalogV1BigQueryDateShardedSpecResponse].
  /// [dataset] The Data Catalog resource name of the dataset entry the current table belongs to. For example: `projects/{PROJECT_ID}/locations/{LOCATION}/entrygroups/{ENTRY_GROUP_ID}/entries/{ENTRY_ID}`.
  /// [latestShardResource] BigQuery resource name of the latest shard.
  /// [shardCount] Total number of shards.
  /// [tablePrefix] The table name prefix of the shards. The name of any given shard is `[table_prefix]YYYYMMDD`. For example, for the `MyTable20180101` shard, the `table_prefix` is `MyTable`.
  const GoogleCloudDatacatalogV1BigQueryDateShardedSpecResponse({
    required this.dataset,
    required this.latestShardResource,
    required this.shardCount,
    required this.tablePrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': dataset,
      'latestShardResource': latestShardResource,
      'shardCount': shardCount,
      'tablePrefix': tablePrefix,
    };
  }

  factory GoogleCloudDatacatalogV1BigQueryDateShardedSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1BigQueryDateShardedSpecResponse(
      dataset: pulumi.Input.fromValue(map['dataset'] as String),
      latestShardResource: pulumi.Input.fromValue(map['latestShardResource'] as String),
      shardCount: pulumi.Input.fromValue(map['shardCount'] as String),
      tablePrefix: pulumi.Input.fromValue(map['tablePrefix'] as String),
    );
  }
}
