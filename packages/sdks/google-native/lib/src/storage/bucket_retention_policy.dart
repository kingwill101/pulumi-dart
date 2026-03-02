// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The bucket's retention policy. The retention policy enforces a minimum retention time for all objects contained in the bucket, based on their creation time. Any attempt to overwrite or delete objects younger than the retention period will result in a PERMISSION_DENIED error. An unlocked retention policy can be modified or removed from the bucket via a storage.buckets.update operation. A locked retention policy cannot be removed or shortened in duration for the lifetime of the bucket. Attempting to remove or decrease period of a locked retention policy will result in a PERMISSION_DENIED error.
class BucketRetentionPolicy {
  /// Server-determined value that indicates the time from which policy was enforced and effective. This value is in RFC 3339 format.
  final pulumi.Input<String>? effectiveTime;
  /// Once locked, an object retention policy cannot be modified.
  final pulumi.Input<bool>? isLocked;
  /// The duration in seconds that objects need to be retained. Retention duration must be greater than zero and less than 100 years. Note that enforcement of retention periods less than a day is not guaranteed. Such periods should only be used for testing purposes.
  final pulumi.Input<String>? retentionPeriod;

  /// Creates a new [BucketRetentionPolicy].
  /// [effectiveTime] Server-determined value that indicates the time from which policy was enforced and effective. This value is in RFC 3339 format.
  /// [isLocked] Once locked, an object retention policy cannot be modified.
  /// [retentionPeriod] The duration in seconds that objects need to be retained. Retention duration must be greater than zero and less than 100 years. Note that enforcement of retention periods less than a day is not guaranteed. Such periods should only be used for testing purposes.
  BucketRetentionPolicy({
    this.effectiveTime,
    this.isLocked,
    this.retentionPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effectiveTime': ?effectiveTime,
      'isLocked': ?isLocked,
      'retentionPeriod': ?retentionPeriod,
    };
  }

  factory BucketRetentionPolicy.fromMap(Map<String, dynamic> map) {
    return BucketRetentionPolicy(
      effectiveTime: map['effectiveTime'] == null ? null : (map['effectiveTime'] as String).input(),
      isLocked: map['isLocked'] == null ? null : (map['isLocked'] as bool).input(),
      retentionPeriod: map['retentionPeriod'] == null ? null : (map['retentionPeriod'] as String).input(),
    );
  }
}

