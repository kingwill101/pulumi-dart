// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'test_targets_for_shard_response.dart';

/// Output only. Details about the shard.
class ShardResponse {
  /// The estimated shard duration based on previous test case timing records, if available.
  final pulumi.Input<String> estimatedShardDuration;
  /// The total number of shards.
  final pulumi.Input<int> numShards;
  /// The index of the shard among all the shards.
  final pulumi.Input<int> shardIndex;
  /// Test targets for each shard. Only set for manual sharding.
  final pulumi.Input<TestTargetsForShardResponse> testTargetsForShard;

  /// Creates a new [ShardResponse].
  /// [estimatedShardDuration] The estimated shard duration based on previous test case timing records, if available.
  /// [numShards] The total number of shards.
  /// [shardIndex] The index of the shard among all the shards.
  /// [testTargetsForShard] Test targets for each shard. Only set for manual sharding.
  ShardResponse({
    required this.estimatedShardDuration,
    required this.numShards,
    required this.shardIndex,
    required this.testTargetsForShard,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'estimatedShardDuration': estimatedShardDuration,
      'numShards': numShards,
      'shardIndex': shardIndex,
      'testTargetsForShard': pulumi.Input.mapInputValue<TestTargetsForShardResponse, Map<String, dynamic>>(testTargetsForShard, (value) => value.toMap()),
    };
  }

  factory ShardResponse.fromMap(Map<String, dynamic> map) {
    return ShardResponse(
      estimatedShardDuration: (map['estimatedShardDuration'] as String).input(),
      numShards: (map['numShards'] as int).input(),
      shardIndex: (map['shardIndex'] as int).input(),
      testTargetsForShard: (TestTargetsForShardResponse.fromMap((map['testTargetsForShard'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

