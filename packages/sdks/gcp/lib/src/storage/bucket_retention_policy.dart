// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketRetentionPolicy {
  /// If set to `true`, the bucket will be [locked](https://cloud.google.com/storage/docs/using-bucket-lock#lock-bucket) and permanently restrict edits to the bucket's retention policy.  Caution: Locking a bucket is an irreversible action.
  final pulumi.Input<bool>? isLocked;
  /// The period of time, in seconds, that objects in the bucket must be retained and cannot be deleted, overwritten, or archived. The value must be less than 3,155,760,000 seconds.
  final pulumi.Input<String> retentionPeriod;

  /// Creates a new [BucketRetentionPolicy].
  /// [isLocked] If set to `true`, the bucket will be [locked](https://cloud.google.com/storage/docs/using-bucket-lock#lock-bucket) and permanently restrict edits to the bucket's retention policy.  Caution: Locking a bucket is an irreversible action.
  /// [retentionPeriod] The period of time, in seconds, that objects in the bucket must be retained and cannot be deleted, overwritten, or archived. The value must be less than 3,155,760,000 seconds.
  BucketRetentionPolicy({
    this.isLocked,
    required this.retentionPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isLocked': ?isLocked,
      'retentionPeriod': retentionPeriod,
    };
  }

  factory BucketRetentionPolicy.fromMap(Map<String, dynamic> map) {
    return BucketRetentionPolicy(
      isLocked: map['isLocked'] == null ? null : (map['isLocked'] as bool).input(),
      retentionPeriod: (map['retentionPeriod'] as String).input(),
    );
  }
}

