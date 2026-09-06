// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dynamic Executor Allocation Properties
class DynamicExecutorAllocation {
  /// Indicates whether Dynamic Executor Allocation is enabled or not.
  final pulumi.Input<bool?>? enabled;
  /// The maximum number of executors alloted
  final pulumi.Input<int?>? maxExecutors;
  /// The minimum number of executors alloted
  final pulumi.Input<int?>? minExecutors;

  /// Creates a new [DynamicExecutorAllocation].
  /// [enabled] Indicates whether Dynamic Executor Allocation is enabled or not.
  /// [maxExecutors] The maximum number of executors alloted
  /// [minExecutors] The minimum number of executors alloted
  const DynamicExecutorAllocation({
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

  factory DynamicExecutorAllocation.fromMap(Map<String, dynamic> map) {
    return DynamicExecutorAllocation(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxExecutors: (() { final guardedValue = map['maxExecutors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      minExecutors: (() { final guardedValue = map['minExecutors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
