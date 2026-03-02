// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'manual_sharding.dart';
import 'smart_sharding.dart';
import 'uniform_sharding.dart';

/// Options for enabling sharding.
class ShardingOption {
  /// Shards test cases into the specified groups of packages, classes, and/or methods.
  final pulumi.Input<ManualSharding>? manualSharding;
  /// Shards test based on previous test case timing records.
  final pulumi.Input<SmartSharding>? smartSharding;
  /// Uniformly shards test cases given a total number of shards.
  final pulumi.Input<UniformSharding>? uniformSharding;

  /// Creates a new [ShardingOption].
  /// [manualSharding] Shards test cases into the specified groups of packages, classes, and/or methods.
  /// [smartSharding] Shards test based on previous test case timing records.
  /// [uniformSharding] Uniformly shards test cases given a total number of shards.
  ShardingOption({
    this.manualSharding,
    this.smartSharding,
    this.uniformSharding,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'manualSharding': ?pulumi.Input.mapOptionalInputValue<ManualSharding, Map<String, dynamic>>(manualSharding, (value) => value.toMap()),
      'smartSharding': ?pulumi.Input.mapOptionalInputValue<SmartSharding, Map<String, dynamic>>(smartSharding, (value) => value.toMap()),
      'uniformSharding': ?pulumi.Input.mapOptionalInputValue<UniformSharding, Map<String, dynamic>>(uniformSharding, (value) => value.toMap()),
    };
  }

  factory ShardingOption.fromMap(Map<String, dynamic> map) {
    return ShardingOption(
      manualSharding: map['manualSharding'] == null ? null : (ManualSharding.fromMap((map['manualSharding']! as Map).cast<String, dynamic>())).input(),
      smartSharding: map['smartSharding'] == null ? null : (SmartSharding.fromMap((map['smartSharding']! as Map).cast<String, dynamic>())).input(),
      uniformSharding: map['uniformSharding'] == null ? null : (UniformSharding.fromMap((map['uniformSharding']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

