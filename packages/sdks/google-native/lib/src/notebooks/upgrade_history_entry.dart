// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'upgrade_history_entry_action.dart';
import 'upgrade_history_entry_state.dart';

/// The entry of VM image upgrade history.
class UpgradeHistoryEntry {
  /// Action. Rolloback or Upgrade.
  final pulumi.Input<UpgradeHistoryEntryAction>? action;
  /// The container image before this instance upgrade.
  final pulumi.Input<String>? containerImage;
  /// The time that this instance upgrade history entry is created.
  final pulumi.Input<String>? createTime;
  /// The framework of this notebook instance.
  final pulumi.Input<String>? framework;
  /// The snapshot of the boot disk of this notebook instance before upgrade.
  final pulumi.Input<String>? snapshot;
  /// The state of this instance upgrade history entry.
  final pulumi.Input<UpgradeHistoryEntryState>? state;
  /// Target VM Image. Format: `ainotebooks-vm/project/image-name/name`.
  final pulumi.Input<String>? targetImage;
  /// Target VM Version, like m63.
  final pulumi.Input<String>? targetVersion;
  /// The version of the notebook instance before this upgrade.
  final pulumi.Input<String>? version;
  /// The VM image before this instance upgrade.
  final pulumi.Input<String>? vmImage;

  /// Creates a new [UpgradeHistoryEntry].
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
  UpgradeHistoryEntry({
    this.action,
    this.containerImage,
    this.createTime,
    this.framework,
    this.snapshot,
    this.state,
    this.targetImage,
    this.targetVersion,
    this.version,
    this.vmImage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?pulumi.Input.mapOptionalInputValue<UpgradeHistoryEntryAction, String>(action, (value) => value.value),
      'containerImage': ?containerImage,
      'createTime': ?createTime,
      'framework': ?framework,
      'snapshot': ?snapshot,
      'state': ?pulumi.Input.mapOptionalInputValue<UpgradeHistoryEntryState, String>(state, (value) => value.value),
      'targetImage': ?targetImage,
      'targetVersion': ?targetVersion,
      'version': ?version,
      'vmImage': ?vmImage,
    };
  }

  factory UpgradeHistoryEntry.fromMap(Map<String, dynamic> map) {
    return UpgradeHistoryEntry(
      action: map['action'] == null ? null : (UpgradeHistoryEntryAction.fromValue(map['action'] as String)).input(),
      containerImage: map['containerImage'] == null ? null : (map['containerImage'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      framework: map['framework'] == null ? null : (map['framework'] as String).input(),
      snapshot: map['snapshot'] == null ? null : (map['snapshot'] as String).input(),
      state: map['state'] == null ? null : (UpgradeHistoryEntryState.fromValue(map['state'] as String)).input(),
      targetImage: map['targetImage'] == null ? null : (map['targetImage'] as String).input(),
      targetVersion: map['targetVersion'] == null ? null : (map['targetVersion'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
      vmImage: map['vmImage'] == null ? null : (map['vmImage'] as String).input(),
    );
  }
}

