// ignore_for_file: unused_element, unnecessary_cast

import 'interval.dart';

/// Defines the policy of the QueuedRequest.
class QueueingPolicy {
  /// A relative time after which resources may be created.
  final String? validAfterDuration;
  /// An absolute time at which resources may be created.
  final String? validAfterTime;
  /// An absolute time interval within which resources may be created.
  final Interval? validInterval;
  /// A relative time after which resources should not be created. If the request cannot be fulfilled by this time the request will be failed.
  final String? validUntilDuration;
  /// An absolute time after which resources should not be created. If the request cannot be fulfilled by this time the request will be failed.
  final String? validUntilTime;

  /// Creates a new [QueueingPolicy].
  /// [validAfterDuration] A relative time after which resources may be created.
  /// [validAfterTime] An absolute time at which resources may be created.
  /// [validInterval] An absolute time interval within which resources may be created.
  /// [validUntilDuration] A relative time after which resources should not be created. If the request cannot be fulfilled by this time the request will be failed.
  /// [validUntilTime] An absolute time after which resources should not be created. If the request cannot be fulfilled by this time the request will be failed.
  QueueingPolicy({
    this.validAfterDuration,
    this.validAfterTime,
    this.validInterval,
    this.validUntilDuration,
    this.validUntilTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'validAfterDuration': ?validAfterDuration,
      'validAfterTime': ?validAfterTime,
      'validInterval': ?validInterval == null ? null : validInterval!.toMap(),
      'validUntilDuration': ?validUntilDuration,
      'validUntilTime': ?validUntilTime,
    };
  }

  factory QueueingPolicy.fromMap(Map<String, dynamic> map) {
    return QueueingPolicy(
      validAfterDuration: map['validAfterDuration'] == null ? null : map['validAfterDuration'] as String,
      validAfterTime: map['validAfterTime'] == null ? null : map['validAfterTime'] as String,
      validInterval: map['validInterval'] == null ? null : Interval.fromMap((map['validInterval'] as Map).cast<String, dynamic>()),
      validUntilDuration: map['validUntilDuration'] == null ? null : map['validUntilDuration'] as String,
      validUntilTime: map['validUntilTime'] == null ? null : map['validUntilTime'] as String,
    );
  }
}

