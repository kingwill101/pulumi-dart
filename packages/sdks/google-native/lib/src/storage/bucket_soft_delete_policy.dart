// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The bucket's soft delete policy, which defines the period of time that soft-deleted objects will be retained, and cannot be permanently deleted.
class BucketSoftDeletePolicy {
  /// Server-determined value that indicates the time from which the policy, or one with a greater retention, was effective. This value is in RFC 3339 format.
  final pulumi.Input<String>? effectiveTime;
  /// The duration in seconds that soft-deleted objects in the bucket will be retained and cannot be permanently deleted.
  final pulumi.Input<String>? retentionDurationSeconds;

  /// Creates a new [BucketSoftDeletePolicy].
  /// [effectiveTime] Server-determined value that indicates the time from which the policy, or one with a greater retention, was effective. This value is in RFC 3339 format.
  /// [retentionDurationSeconds] The duration in seconds that soft-deleted objects in the bucket will be retained and cannot be permanently deleted.
  BucketSoftDeletePolicy({
    this.effectiveTime,
    this.retentionDurationSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effectiveTime': ?effectiveTime,
      'retentionDurationSeconds': ?retentionDurationSeconds,
    };
  }

  factory BucketSoftDeletePolicy.fromMap(Map<String, dynamic> map) {
    return BucketSoftDeletePolicy(
      effectiveTime: map['effectiveTime'] == null ? null : (map['effectiveTime']! as String).input(),
      retentionDurationSeconds: map['retentionDurationSeconds'] == null ? null : (map['retentionDurationSeconds']! as String).input(),
    );
  }
}

