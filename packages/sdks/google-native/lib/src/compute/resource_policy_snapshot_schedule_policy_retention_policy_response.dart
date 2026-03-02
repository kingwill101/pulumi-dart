// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Policy for retention of scheduled snapshots.
class ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponse {
  /// Maximum age of the snapshot that is allowed to be kept.
  final pulumi.Input<int> maxRetentionDays;
  final pulumi.Input<String> onPolicySwitch;
  /// Specifies the behavior to apply to scheduled snapshots when the source disk is deleted.
  final pulumi.Input<String> onSourceDiskDelete;

  /// Creates a new [ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponse].
  /// [maxRetentionDays] Maximum age of the snapshot that is allowed to be kept.
  /// [onPolicySwitch] Required.
  /// [onSourceDiskDelete] Specifies the behavior to apply to scheduled snapshots when the source disk is deleted.
  ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponse({
    required this.maxRetentionDays,
    required this.onPolicySwitch,
    required this.onSourceDiskDelete,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxRetentionDays': maxRetentionDays,
      'onPolicySwitch': onPolicySwitch,
      'onSourceDiskDelete': onSourceDiskDelete,
    };
  }

  factory ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicyRetentionPolicyResponse(
      maxRetentionDays: (map['maxRetentionDays'] as int).input(),
      onPolicySwitch: (map['onPolicySwitch'] as String).input(),
      onSourceDiskDelete: (map['onSourceDiskDelete'] as String).input(),
    );
  }
}

