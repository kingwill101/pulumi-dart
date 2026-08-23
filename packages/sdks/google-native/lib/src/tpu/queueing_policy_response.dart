// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interval_response.dart';

/// Defines the policy of the QueuedRequest.
class QueueingPolicyResponse {
  /// A relative time after which resources may be created.
  final pulumi.Input<String> validAfterDuration;
  /// An absolute time at which resources may be created.
  final pulumi.Input<String> validAfterTime;
  /// An absolute time interval within which resources may be created.
  final pulumi.Input<IntervalResponse> validInterval;
  /// A relative time after which resources should not be created. If the request cannot be fulfilled by this time the request will be failed.
  final pulumi.Input<String> validUntilDuration;
  /// An absolute time after which resources should not be created. If the request cannot be fulfilled by this time the request will be failed.
  final pulumi.Input<String> validUntilTime;

  /// Creates a new [QueueingPolicyResponse].
  /// [validAfterDuration] A relative time after which resources may be created.
  /// [validAfterTime] An absolute time at which resources may be created.
  /// [validInterval] An absolute time interval within which resources may be created.
  /// [validUntilDuration] A relative time after which resources should not be created. If the request cannot be fulfilled by this time the request will be failed.
  /// [validUntilTime] An absolute time after which resources should not be created. If the request cannot be fulfilled by this time the request will be failed.
  const QueueingPolicyResponse({
    required this.validAfterDuration,
    required this.validAfterTime,
    required this.validInterval,
    required this.validUntilDuration,
    required this.validUntilTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'validAfterDuration': validAfterDuration,
      'validAfterTime': validAfterTime,
      'validInterval': pulumi.Input.mapInputValue<IntervalResponse, Map<String, dynamic>>(validInterval, (value) => value.toMap()),
      'validUntilDuration': validUntilDuration,
      'validUntilTime': validUntilTime,
    };
  }

  factory QueueingPolicyResponse.fromMap(Map<String, dynamic> map) {
    return QueueingPolicyResponse(
      validAfterDuration: pulumi.Input.fromValue(map['validAfterDuration'] as String),
      validAfterTime: pulumi.Input.fromValue(map['validAfterTime'] as String),
      validInterval: pulumi.Input.fromValue(IntervalResponse.fromMap((map['validInterval']! as Map).cast<String, dynamic>())),
      validUntilDuration: pulumi.Input.fromValue(map['validUntilDuration'] as String),
      validUntilTime: pulumi.Input.fromValue(map['validUntilTime'] as String),
    );
  }
}
