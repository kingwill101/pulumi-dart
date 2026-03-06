// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_disk_retention_rule.dart';

/// Input properties used for looking up and filtering BackupPolicyDisk resources.
class BackupPolicyDiskState {
  /// Specifies a list of repeating time interval. It should follow `ISO 8601` repeating time interval . Changing this forces a new Backup Policy Disk to be created.
  final pulumi.Input<List<String>>? backupRepeatingTimeIntervals;
  /// The duration of default retention rule. It should follow `ISO 8601` duration format. Changing this forces a new Backup Policy Disk to be created.
  final pulumi.Input<String>? defaultRetentionDuration;
  /// The name which should be used for this Backup Policy Disk. Changing this forces a new Backup Policy Disk to be created.
  final pulumi.Input<String>? name;
  /// One or more `retention_rule` blocks as defined below. Changing this forces a new Backup Policy Disk to be created.
  final pulumi.Input<List<BackupPolicyDiskRetentionRule>>? retentionRules;
  /// Specifies the Time Zone which should be used by the backup schedule. Changing this forces a new Backup Policy Disk to be created.
  final pulumi.Input<String>? timeZone;
  /// The ID of the Backup Vault within which the Backup Policy Disk should exist. Changing this forces a new Backup Policy Disk to be created.
  final pulumi.Input<String>? vaultId;

  /// Creates a new [BackupPolicyDiskState].
  /// [backupRepeatingTimeIntervals] Specifies a list of repeating time interval. It should follow `ISO 8601` repeating time interval . Changing this forces a new Backup Policy Disk to be created.
  /// [defaultRetentionDuration] The duration of default retention rule. It should follow `ISO 8601` duration format. Changing this forces a new Backup Policy Disk to be created.
  /// [name] The name which should be used for this Backup Policy Disk. Changing this forces a new Backup Policy Disk to be created.
  /// [retentionRules] One or more `retention_rule` blocks as defined below. Changing this forces a new Backup Policy Disk to be created.
  /// [timeZone] Specifies the Time Zone which should be used by the backup schedule. Changing this forces a new Backup Policy Disk to be created.
  /// [vaultId] The ID of the Backup Vault within which the Backup Policy Disk should exist. Changing this forces a new Backup Policy Disk to be created.
  const BackupPolicyDiskState({
    this.backupRepeatingTimeIntervals,
    this.defaultRetentionDuration,
    this.name,
    this.retentionRules,
    this.timeZone,
    this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRepeatingTimeIntervals': ?backupRepeatingTimeIntervals,
      'defaultRetentionDuration': ?defaultRetentionDuration,
      'name': ?name,
      'retentionRules': ?pulumi.Input.mapOptionalInputValue<List<BackupPolicyDiskRetentionRule>, List<Map<String, dynamic>>>(retentionRules, (value) => pulumi.Input.encodeList<BackupPolicyDiskRetentionRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeZone': ?timeZone,
      'vaultId': ?vaultId,
    };
  }

  factory BackupPolicyDiskState.fromMap(Map<String, dynamic> map) {
    return BackupPolicyDiskState(
      backupRepeatingTimeIntervals: (() { final guardedValue = map['backupRepeatingTimeIntervals']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      defaultRetentionDuration: (() { final guardedValue = map['defaultRetentionDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retentionRules: (() { final guardedValue = map['retentionRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BackupPolicyDiskRetentionRule>(guardedValue, (value) => BackupPolicyDiskRetentionRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vaultId: (() { final guardedValue = map['vaultId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

