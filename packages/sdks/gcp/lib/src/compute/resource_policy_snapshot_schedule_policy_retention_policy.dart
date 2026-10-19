// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourcePolicySnapshotSchedulePolicyRetentionPolicy {
  /// Maximum age of the snapshot that is allowed to be kept.
  final pulumi.Input<int> maxRetentionDays;
  /// Specifies the behavior to apply to scheduled snapshots when
  /// the source disk is deleted.
  /// Default value is `KEEP_AUTO_SNAPSHOTS`.
  /// Possible values are: `KEEP_AUTO_SNAPSHOTS`, `APPLY_RETENTION_POLICY`.
  final pulumi.Input<String?>? onSourceDiskDelete;

  /// Creates a new [ResourcePolicySnapshotSchedulePolicyRetentionPolicy].
  /// [maxRetentionDays] Maximum age of the snapshot that is allowed to be kept.
  /// [onSourceDiskDelete] Specifies the behavior to apply to scheduled snapshots when
  const ResourcePolicySnapshotSchedulePolicyRetentionPolicy({
    required this.maxRetentionDays,
    this.onSourceDiskDelete,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxRetentionDays': maxRetentionDays,
      'onSourceDiskDelete': ?onSourceDiskDelete,
    };
  }

  factory ResourcePolicySnapshotSchedulePolicyRetentionPolicy.fromMap(Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicyRetentionPolicy(
      maxRetentionDays: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maxRetentionDays'])),
      onSourceDiskDelete: (() { final guardedValue = map['onSourceDiskDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
