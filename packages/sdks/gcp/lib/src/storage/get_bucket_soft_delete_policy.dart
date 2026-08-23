// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBucketSoftDeletePolicy {
  /// Server-determined value that indicates the time from which the policy, or one with a greater retention, was effective. This value is in RFC 3339 format.
  final pulumi.Input<String> effectiveTime;
  /// The duration in seconds that soft-deleted objects in the bucket will be retained and cannot be permanently deleted. Default value is 604800.
  final pulumi.Input<int> retentionDurationSeconds;

  /// Creates a new [GetBucketSoftDeletePolicy].
  /// [effectiveTime] Server-determined value that indicates the time from which the policy, or one with a greater retention, was effective. This value is in RFC 3339 format.
  /// [retentionDurationSeconds] The duration in seconds that soft-deleted objects in the bucket will be retained and cannot be permanently deleted. Default value is 604800.
  const GetBucketSoftDeletePolicy({
    required this.effectiveTime,
    required this.retentionDurationSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effectiveTime': effectiveTime,
      'retentionDurationSeconds': retentionDurationSeconds,
    };
  }

  factory GetBucketSoftDeletePolicy.fromMap(Map<String, dynamic> map) {
    return GetBucketSoftDeletePolicy(
      effectiveTime: pulumi.Input.fromValue(map['effectiveTime'] as String),
      retentionDurationSeconds: pulumi.Input.fromValue(map['retentionDurationSeconds'] as int),
    );
  }
}
