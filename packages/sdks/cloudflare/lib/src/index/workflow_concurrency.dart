// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowConcurrency {
  /// Maximum number of instances of this workflow that can run concurrently. Additional instances are queued and started as running instances complete. Must not exceed the account concurrency limit.
  final pulumi.Input<int?>? limit;

  /// Creates a new [WorkflowConcurrency].
  /// [limit] Maximum number of instances of this workflow that can run concurrently. Additional instances are queued and started as running instances complete. Must not exceed the account concurrency limit.
  const WorkflowConcurrency({
    this.limit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limit': ?limit,
    };
  }

  factory WorkflowConcurrency.fromMap(Map<String, dynamic> map) {
    return WorkflowConcurrency(
      limit: (() { final guardedValue = map['limit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
