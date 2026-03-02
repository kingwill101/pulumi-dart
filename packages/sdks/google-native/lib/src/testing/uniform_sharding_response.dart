// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Uniformly shards test cases given a total number of shards. For instrumentation tests, it will be translated to "-e numShard" and "-e shardIndex" AndroidJUnitRunner arguments. With uniform sharding enabled, specifying either of these sharding arguments via `environment_variables` is invalid. Based on the sharding mechanism AndroidJUnitRunner uses, there is no guarantee that test cases will be distributed uniformly across all shards.
class UniformShardingResponse {
  /// The total number of shards to create. This must always be a positive number that is no greater than the total number of test cases. When you select one or more physical devices, the number of shards must be <= 50. When you select one or more ARM virtual devices, it must be <= 200. When you select only x86 virtual devices, it must be <= 500.
  final pulumi.Input<int> numShards;

  /// Creates a new [UniformShardingResponse].
  /// [numShards] The total number of shards to create. This must always be a positive number that is no greater than the total number of test cases. When you select one or more physical devices, the number of shards must be <= 50. When you select one or more ARM virtual devices, it must be <= 200. When you select only x86 virtual devices, it must be <= 500.
  UniformShardingResponse({
    required this.numShards,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'numShards': numShards,
    };
  }

  factory UniformShardingResponse.fromMap(Map<String, dynamic> map) {
    return UniformShardingResponse(
      numShards: (map['numShards'] as int).input(),
    );
  }
}

