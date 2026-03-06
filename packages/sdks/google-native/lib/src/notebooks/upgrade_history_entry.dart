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
  const UpgradeHistoryEntry({
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
      'action': ?pulumi.Input.mapOptionalInputValue<UpgradeHistoryEntryAction, String>(action, (value) => value.wireValue),
      'containerImage': ?containerImage,
      'createTime': ?createTime,
      'framework': ?framework,
      'snapshot': ?snapshot,
      'state': ?pulumi.Input.mapOptionalInputValue<UpgradeHistoryEntryState, String>(state, (value) => value.wireValue),
      'targetImage': ?targetImage,
      'targetVersion': ?targetVersion,
      'version': ?version,
      'vmImage': ?vmImage,
    };
  }

  factory UpgradeHistoryEntry.fromMap(Map<String, dynamic> map) {
    return UpgradeHistoryEntry(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UpgradeHistoryEntryAction.fromValue(guardedValue as String)); })(),
      containerImage: (() { final guardedValue = map['containerImage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      framework: (() { final guardedValue = map['framework']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshot: (() { final guardedValue = map['snapshot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UpgradeHistoryEntryState.fromValue(guardedValue as String)); })(),
      targetImage: (() { final guardedValue = map['targetImage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetVersion: (() { final guardedValue = map['targetVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmImage: (() { final guardedValue = map['vmImage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

