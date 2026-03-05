// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'retry_response.dart';
import 'rollback_response.dart';

/// Configuration of the repair action.
class RepairModeResponse {
  /// Optional. Retries a failed job.
  final pulumi.Input<RetryResponse> retry;
  /// Optional. Rolls back a `Rollout`.
  final pulumi.Input<RollbackResponse> rollback;

  /// Creates a new [RepairModeResponse].
  /// [retry] Optional. Retries a failed job.
  /// [rollback] Optional. Rolls back a `Rollout`.
  RepairModeResponse({
    required this.retry,
    required this.rollback,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retry': pulumi.Input.mapInputValue<RetryResponse, Map<String, dynamic>>(retry, (value) => value.toMap()),
      'rollback': pulumi.Input.mapInputValue<RollbackResponse, Map<String, dynamic>>(rollback, (value) => value.toMap()),
    };
  }

  factory RepairModeResponse.fromMap(Map<String, dynamic> map) {
    return RepairModeResponse(
      retry: pulumi.Input.fromValue(RetryResponse.fromMap((map['retry']! as Map).cast<String, dynamic>())),
      rollback: pulumi.Input.fromValue(RollbackResponse.fromMap((map['rollback']! as Map).cast<String, dynamic>())),
    );
  }
}

