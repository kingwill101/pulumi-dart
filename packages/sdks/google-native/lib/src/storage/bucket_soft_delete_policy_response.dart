// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The bucket's soft delete policy, which defines the period of time that soft-deleted objects will be retained, and cannot be permanently deleted.
class BucketSoftDeletePolicyResponse {
  /// Server-determined value that indicates the time from which the policy, or one with a greater retention, was effective. This value is in RFC 3339 format.
  final pulumi.Input<String> effectiveTime;
  /// The duration in seconds that soft-deleted objects in the bucket will be retained and cannot be permanently deleted.
  final pulumi.Input<String> retentionDurationSeconds;

  /// Creates a new [BucketSoftDeletePolicyResponse].
  /// [effectiveTime] Server-determined value that indicates the time from which the policy, or one with a greater retention, was effective. This value is in RFC 3339 format.
  /// [retentionDurationSeconds] The duration in seconds that soft-deleted objects in the bucket will be retained and cannot be permanently deleted.
  BucketSoftDeletePolicyResponse({
    required this.effectiveTime,
    required this.retentionDurationSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effectiveTime': effectiveTime,
      'retentionDurationSeconds': retentionDurationSeconds,
    };
  }

  factory BucketSoftDeletePolicyResponse.fromMap(Map<String, dynamic> map) {
    return BucketSoftDeletePolicyResponse(
      effectiveTime: pulumi.Input.fromValue(map['effectiveTime'] as String),
      retentionDurationSeconds: pulumi.Input.fromValue(map['retentionDurationSeconds'] as String),
    );
  }
}

