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
  const ShardingOption({
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
      manualSharding: (() { final guardedValue = map['manualSharding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManualSharding.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      smartSharding: (() { final guardedValue = map['smartSharding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SmartSharding.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      uniformSharding: (() { final guardedValue = map['uniformSharding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UniformSharding.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

