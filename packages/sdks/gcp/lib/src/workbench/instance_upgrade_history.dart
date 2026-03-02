// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceUpgradeHistory {
  /// Optional. Action. Rolloback or Upgrade.
  final pulumi.Input<String>? action;
  /// Optional. The container image before this instance upgrade.
  final pulumi.Input<String>? containerImage;
  /// An RFC3339 timestamp in UTC time. This in the format of yyyy-MM-ddTHH:mm:ss.SSSZ.
  /// The milliseconds portion (".SSS") is optional.
  final pulumi.Input<String>? createTime;
  /// Optional. The framework of this workbench instance.
  final pulumi.Input<String>? framework;
  /// Optional. The snapshot of the boot disk of this workbench instance before upgrade.
  final pulumi.Input<String>? snapshot;
  /// (Output)
  /// Output only. The state of this instance upgrade history entry.
  final pulumi.Input<String>? state;
  /// Optional. Target VM Version, like m63.
  final pulumi.Input<String>? targetVersion;
  /// Optional. The version of the workbench instance before this upgrade.
  final pulumi.Input<String>? version;
  /// Optional. The VM image before this instance upgrade.
  final pulumi.Input<String>? vmImage;

  /// Creates a new [InstanceUpgradeHistory].
  /// [action] Optional. Action. Rolloback or Upgrade.
  /// [containerImage] Optional. The container image before this instance upgrade.
  /// [createTime] An RFC3339 timestamp in UTC time. This in the format of yyyy-MM-ddTHH:mm:ss.SSSZ.
  /// [framework] Optional. The framework of this workbench instance.
  /// [snapshot] Optional. The snapshot of the boot disk of this workbench instance before upgrade.
  /// [state] (Output)
  /// [targetVersion] Optional. Target VM Version, like m63.
  /// [version] Optional. The version of the workbench instance before this upgrade.
  /// [vmImage] Optional. The VM image before this instance upgrade.
  InstanceUpgradeHistory({
    this.action,
    this.containerImage,
    this.createTime,
    this.framework,
    this.snapshot,
    this.state,
    this.targetVersion,
    this.version,
    this.vmImage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'containerImage': ?containerImage,
      'createTime': ?createTime,
      'framework': ?framework,
      'snapshot': ?snapshot,
      'state': ?state,
      'targetVersion': ?targetVersion,
      'version': ?version,
      'vmImage': ?vmImage,
    };
  }

  factory InstanceUpgradeHistory.fromMap(Map<String, dynamic> map) {
    return InstanceUpgradeHistory(
      action: map['action'] == null ? null : (map['action']! as String).input(),
      containerImage: map['containerImage'] == null ? null : (map['containerImage']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      framework: map['framework'] == null ? null : (map['framework']! as String).input(),
      snapshot: map['snapshot'] == null ? null : (map['snapshot']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      targetVersion: map['targetVersion'] == null ? null : (map['targetVersion']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
      vmImage: map['vmImage'] == null ? null : (map['vmImage']! as String).input(),
    );
  }
}

