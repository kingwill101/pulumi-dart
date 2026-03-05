// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'test_targets_for_shard_response.dart';

/// Shards test cases into the specified groups of packages, classes, and/or methods. With manual sharding enabled, specifying test targets via environment_variables or in InstrumentationTest is invalid.
class ManualShardingResponse {
  /// Group of packages, classes, and/or test methods to be run for each manually-created shard. You must specify at least one shard if this field is present. When you select one or more physical devices, the number of repeated test_targets_for_shard must be &lt;= 50. When you select one or more ARM virtual devices, it must be &lt;= 200. When you select only x86 virtual devices, it must be &lt;= 500.
  final pulumi.Input<List<TestTargetsForShardResponse>> testTargetsForShard;

  /// Creates a new [ManualShardingResponse].
  /// [testTargetsForShard] Group of packages, classes, and/or test methods to be run for each manually-created shard. You must specify at least one shard if this field is present. When you select one or more physical devices, the number of repeated test_targets_for_shard must be &lt;= 50. When you select one or more ARM virtual devices, it must be &lt;= 200. When you select only x86 virtual devices, it must be &lt;= 500.
  ManualShardingResponse({
    required this.testTargetsForShard,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'testTargetsForShard': pulumi.Input.mapInputValue<List<TestTargetsForShardResponse>, List<Map<String, dynamic>>>(testTargetsForShard, (value) => pulumi.Input.encodeList<TestTargetsForShardResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManualShardingResponse.fromMap(Map<String, dynamic> map) {
    return ManualShardingResponse(
      testTargetsForShard: pulumi.Input.fromValue(pulumi.Input.decodeList<TestTargetsForShardResponse>(map['testTargetsForShard']!, (value) => TestTargetsForShardResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

