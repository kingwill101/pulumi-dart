// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'retry.dart';
import 'rollback.dart';

/// Configuration of the repair action.
class RepairMode {
  /// Optional. Retries a failed job.
  final pulumi.Input<Retry>? retry;
  /// Optional. Rolls back a `Rollout`.
  final pulumi.Input<Rollback>? rollback;

  /// Creates a new [RepairMode].
  /// [retry] Optional. Retries a failed job.
  /// [rollback] Optional. Rolls back a `Rollout`.
  RepairMode({
    this.retry,
    this.rollback,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retry': ?pulumi.Input.mapOptionalInputValue<Retry, Map<String, dynamic>>(retry, (value) => value.toMap()),
      'rollback': ?pulumi.Input.mapOptionalInputValue<Rollback, Map<String, dynamic>>(rollback, (value) => value.toMap()),
    };
  }

  factory RepairMode.fromMap(Map<String, dynamic> map) {
    return RepairMode(
      retry: map['retry'] == null ? null : (Retry.fromMap((map['retry'] as Map).cast<String, dynamic>())).input(),
      rollback: map['rollback'] == null ? null : (Rollback.fromMap((map['rollback'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

