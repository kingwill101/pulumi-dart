// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The entry of VM image upgrade history.
class UpgradeHistoryEntryResponse {
  /// Action. Rolloback or Upgrade.
  final pulumi.Input<String> action;
  /// The container image before this instance upgrade.
  final pulumi.Input<String> containerImage;
  /// The time that this instance upgrade history entry is created.
  final pulumi.Input<String> createTime;
  /// The framework of this notebook instance.
  final pulumi.Input<String> framework;
  /// The snapshot of the boot disk of this notebook instance before upgrade.
  final pulumi.Input<String> snapshot;
  /// The state of this instance upgrade history entry.
  final pulumi.Input<String> state;
  /// Target VM Image. Format: `ainotebooks-vm/project/image-name/name`.
  final pulumi.Input<String> targetImage;
  /// Target VM Version, like m63.
  final pulumi.Input<String> targetVersion;
  /// The version of the notebook instance before this upgrade.
  final pulumi.Input<String> version;
  /// The VM image before this instance upgrade.
  final pulumi.Input<String> vmImage;

  /// Creates a new [UpgradeHistoryEntryResponse].
  /// [action] Action. Rolloback or Upgrade.
  /// [containerImage] The container image before this instance upgrade.
  /// [createTime] The time that this instance upgrade history entry is created.
  /// [framework] The framework of this notebook instance.
  /// [snapshot] The snapshot of the boot disk of this notebook instance before upgrade.
  /// [state] The state of this instance upgrade history entry.
  /// [targetImage] Target VM Image. Format: `ainotebooks-vm/project/image-name/name`.
  /// [targetVersion] Target VM Version, like m63.
  /// [version] The version of the notebook instance before this upgrade.
  /// [vmImage] The VM image before this instance upgrade.
  UpgradeHistoryEntryResponse({
    required this.action,
    required this.containerImage,
    required this.createTime,
    required this.framework,
    required this.snapshot,
    required this.state,
    required this.targetImage,
    required this.targetVersion,
    required this.version,
    required this.vmImage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'containerImage': containerImage,
      'createTime': createTime,
      'framework': framework,
      'snapshot': snapshot,
      'state': state,
      'targetImage': targetImage,
      'targetVersion': targetVersion,
      'version': version,
      'vmImage': vmImage,
    };
  }

  factory UpgradeHistoryEntryResponse.fromMap(Map<String, dynamic> map) {
    return UpgradeHistoryEntryResponse(
      action: (map['action'] as String).input(),
      containerImage: (map['containerImage'] as String).input(),
      createTime: (map['createTime'] as String).input(),
      framework: (map['framework'] as String).input(),
      snapshot: (map['snapshot'] as String).input(),
      state: (map['state'] as String).input(),
      targetImage: (map['targetImage'] as String).input(),
      targetVersion: (map['targetVersion'] as String).input(),
      version: (map['version'] as String).input(),
      vmImage: (map['vmImage'] as String).input(),
    );
  }
}

