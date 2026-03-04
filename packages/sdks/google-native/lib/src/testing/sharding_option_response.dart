// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'manual_sharding_response.dart';
import 'smart_sharding_response.dart';
import 'uniform_sharding_response.dart';

/// Options for enabling sharding.
class ShardingOptionResponse {
  /// Shards test cases into the specified groups of packages, classes, and/or methods.
  final pulumi.Input<ManualShardingResponse> manualSharding;

  /// Shards test based on previous test case timing records.
  final pulumi.Input<SmartShardingResponse> smartSharding;

  /// Uniformly shards test cases given a total number of shards.
  final pulumi.Input<UniformShardingResponse> uniformSharding;

  /// Creates a new [ShardingOptionResponse].
  /// [manualSharding] Shards test cases into the specified groups of packages, classes, and/or methods.
  /// [smartSharding] Shards test based on previous test case timing records.
  /// [uniformSharding] Uniformly shards test cases given a total number of shards.
  ShardingOptionResponse({
    required this.manualSharding,
    required this.smartSharding,
    required this.uniformSharding,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'manualSharding':
          pulumi.Input.mapInputValue<
            ManualShardingResponse,
            Map<String, dynamic>
          >(manualSharding, (value) => value.toMap()),
      'smartSharding':
          pulumi.Input.mapInputValue<
            SmartShardingResponse,
            Map<String, dynamic>
          >(smartSharding, (value) => value.toMap()),
      'uniformSharding':
          pulumi.Input.mapInputValue<
            UniformShardingResponse,
            Map<String, dynamic>
          >(uniformSharding, (value) => value.toMap()),
    };
  }

  factory ShardingOptionResponse.fromMap(Map<String, dynamic> map) {
    return ShardingOptionResponse(
      manualSharding: pulumi.Input.fromValue(
        ManualShardingResponse.fromMap(
          (map['manualSharding']! as Map).cast<String, dynamic>(),
        ),
      ),
      smartSharding: pulumi.Input.fromValue(
        SmartShardingResponse.fromMap(
          (map['smartSharding']! as Map).cast<String, dynamic>(),
        ),
      ),
      uniformSharding: pulumi.Input.fromValue(
        UniformShardingResponse.fromMap(
          (map['uniformSharding']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
