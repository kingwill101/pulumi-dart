// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Policy for retention of scheduled snapshots.
class ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponseComputeBeta {
  /// Maximum age of the snapshot that is allowed to be kept.
  final pulumi.Input<int> maxRetentionDays;
  /// Specifies the behavior to apply to scheduled snapshots when the source disk is deleted.
  final pulumi.Input<String> onSourceDiskDelete;

  /// Creates a new [ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponseComputeBeta].
  /// [maxRetentionDays] Maximum age of the snapshot that is allowed to be kept.
  /// [onSourceDiskDelete] Specifies the behavior to apply to scheduled snapshots when the source disk is deleted.
  const ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponseComputeBeta({
    required this.maxRetentionDays,
    required this.onSourceDiskDelete,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxRetentionDays': maxRetentionDays,
      'onSourceDiskDelete': onSourceDiskDelete,
    };
  }

  factory ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponseComputeBeta(
      maxRetentionDays: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maxRetentionDays'])),
      onSourceDiskDelete: pulumi.Input.fromValue(map['onSourceDiskDelete'] as String),
    );
  }
}
