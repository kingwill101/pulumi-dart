// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The entry of VM image upgrade history.
class UpgradeHistoryEntryResponseNotebooksV2 {
  /// Optional. Action. Rolloback or Upgrade.
  final pulumi.Input<String> action;

  /// Optional. The container image before this instance upgrade.
  final pulumi.Input<String> containerImage;

  /// Immutable. The time that this instance upgrade history entry is created.
  final pulumi.Input<String> createTime;

  /// Optional. The framework of this notebook instance.
  final pulumi.Input<String> framework;

  /// Optional. The snapshot of the boot disk of this notebook instance before upgrade.
  final pulumi.Input<String> snapshot;

  /// The state of this instance upgrade history entry.
  final pulumi.Input<String> state;

  /// Optional. Target VM Version, like m63.
  final pulumi.Input<String> targetVersion;

  /// Optional. The version of the notebook instance before this upgrade.
  final pulumi.Input<String> version;

  /// Optional. The VM image before this instance upgrade.
  final pulumi.Input<String> vmImage;

  /// Creates a new [UpgradeHistoryEntryResponseNotebooksV2].
  /// [action] Optional. Action. Rolloback or Upgrade.
  /// [containerImage] Optional. The container image before this instance upgrade.
  /// [createTime] Immutable. The time that this instance upgrade history entry is created.
  /// [framework] Optional. The framework of this notebook instance.
  /// [snapshot] Optional. The snapshot of the boot disk of this notebook instance before upgrade.
  /// [state] The state of this instance upgrade history entry.
  /// [targetVersion] Optional. Target VM Version, like m63.
  /// [version] Optional. The version of the notebook instance before this upgrade.
  /// [vmImage] Optional. The VM image before this instance upgrade.
  UpgradeHistoryEntryResponseNotebooksV2({
    required this.action,
    required this.containerImage,
    required this.createTime,
    required this.framework,
    required this.snapshot,
    required this.state,
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
      'targetVersion': targetVersion,
      'version': version,
      'vmImage': vmImage,
    };
  }

  factory UpgradeHistoryEntryResponseNotebooksV2.fromMap(
    Map<String, dynamic> map,
  ) {
    return UpgradeHistoryEntryResponseNotebooksV2(
      action: pulumi.Input.fromValue(map['action'] as String),
      containerImage: pulumi.Input.fromValue(map['containerImage'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      framework: pulumi.Input.fromValue(map['framework'] as String),
      snapshot: pulumi.Input.fromValue(map['snapshot'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      targetVersion: pulumi.Input.fromValue(map['targetVersion'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
      vmImage: pulumi.Input.fromValue(map['vmImage'] as String),
    );
  }
}
