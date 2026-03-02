// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dynamic Executor Allocation Properties
class DynamicExecutorAllocationResponse {
  /// Indicates whether Dynamic Executor Allocation is enabled or not.
  final pulumi.Input<bool>? enabled;
  /// The maximum number of executors alloted
  final pulumi.Input<int>? maxExecutors;
  /// The minimum number of executors alloted
  final pulumi.Input<int>? minExecutors;

  /// Creates a new [DynamicExecutorAllocationResponse].
  /// [enabled] Indicates whether Dynamic Executor Allocation is enabled or not.
  /// [maxExecutors] The maximum number of executors alloted
  /// [minExecutors] The minimum number of executors alloted
  DynamicExecutorAllocationResponse({
    this.enabled,
    this.maxExecutors,
    this.minExecutors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'maxExecutors': ?maxExecutors,
      'minExecutors': ?minExecutors,
    };
  }

  factory DynamicExecutorAllocationResponse.fromMap(Map<String, dynamic> map) {
    return DynamicExecutorAllocationResponse(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      maxExecutors: map['maxExecutors'] == null ? null : (map['maxExecutors'] as int).input(),
      minExecutors: map['minExecutors'] == null ? null : (map['minExecutors'] as int).input(),
    );
  }
}

