// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EntryBigqueryDateShardedSpec {
  /// (Output)
  /// The Data Catalog resource name of the dataset entry the current table belongs to, for example,
  /// projects/{project_id}/locations/{location}/entrygroups/{entryGroupId}/entries/{entryId}
  final pulumi.Input<String>? dataset;
  /// (Output)
  /// Total number of shards.
  final pulumi.Input<int>? shardCount;
  /// (Output)
  /// The table name prefix of the shards. The name of any given shard is [tablePrefix]YYYYMMDD,
  /// for example, for shard MyTable20180101, the tablePrefix is MyTable.
  final pulumi.Input<String>? tablePrefix;

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
      dataset: (() { final guardedValue = map['dataset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shardCount: (() { final guardedValue = map['shardCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tablePrefix: (() { final guardedValue = map['tablePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

