// ignore_for_file: unused_element, unnecessary_cast


class EntryBigqueryDateShardedSpec {
  /// (Output)
  /// The Data Catalog resource name of the dataset entry the current table belongs to, for example,
  /// projects/{project_id}/locations/{location}/entrygroups/{entryGroupId}/entries/{entryId}
  final String? dataset;
  /// (Output)
  /// Total number of shards.
  final int? shardCount;
  /// (Output)
  /// The table name prefix of the shards. The name of any given shard is [tablePrefix]YYYYMMDD,
  /// for example, for shard MyTable20180101, the tablePrefix is MyTable.
  final String? tablePrefix;

  /// Creates a new [EntryBigqueryDateShardedSpec].
  /// [dataset] (Output)
  /// [shardCount] (Output)
  /// [tablePrefix] (Output)
  EntryBigqueryDateShardedSpec({
    this.dataset,
    this.shardCount,
    this.tablePrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': ?dataset,
      'shardCount': ?shardCount,
      'tablePrefix': ?tablePrefix,
    };
  }

  factory EntryBigqueryDateShardedSpec.fromMap(Map<String, dynamic> map) {
    return EntryBigqueryDateShardedSpec(
      dataset: map['dataset'] == null ? null : map['dataset'] as String,
      shardCount: map['shardCount'] == null ? null : map['shardCount'] as int,
      tablePrefix: map['tablePrefix'] == null ? null : map['tablePrefix'] as String,
    );
  }
}

