// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_blob_storage_retention_rule.dart';

/// Input properties used for looking up and filtering BackupPolicyBlobStorage resources.
class BackupPolicyBlobStorageState {
  /// Specifies a list of repeating time interval. It should follow `ISO 8601` repeating time interval. Changing this forces a new Backup Policy Blob Storage to be created.
  final pulumi.Input<List<String>?>? backupRepeatingTimeIntervals;
  /// The name which should be used for this Backup Policy Blob Storage. Changing this forces a new Backup Policy Blob Storage to be created.
  final pulumi.Input<String?>? name;
  /// The duration of operational default retention rule. It should follow `ISO 8601` duration format. Changing this forces a new Backup Policy Blob Storage to be created.
  final pulumi.Input<String?>? operationalDefaultRetentionDuration;
  /// One or more `retentionRule` blocks as defined below. Changing this forces a new Backup Policy Blob Storage to be created.
  ///
  /// &gt; **Note:** Setting `retentionRule` also requires setting `vaultDefaultRetentionDuration`.
  final pulumi.Input<List<BackupPolicyBlobStorageRetentionRule>?>? retentionRules;
  /// Specifies the Time Zone which should be used by the backup schedule. Changing this forces a new Backup Policy Blob Storage to be created.
  final pulumi.Input<String?>? timeZone;
  /// The duration of vault default retention rule. It should follow `ISO 8601` duration format. Changing this forces a new Backup Policy Blob Storage to be created.
  ///
  /// &gt; **Note:** Setting `vaultDefaultRetentionDuration` also requires setting `backupRepeatingTimeIntervals`. At least one of `operationalDefaultRetentionDuration` or `vaultDefaultRetentionDuration` must be specified.
  final pulumi.Input<String?>? vaultDefaultRetentionDuration;
  /// The ID of the Backup Vault within which the Backup Policy Blob Storage should exist. Changing this forces a new Backup Policy Blob Storage to be created.
  final pulumi.Input<String?>? vaultId;

  /// Creates a new [BackupPolicyBlobStorageState].
  /// [backupRepeatingTimeIntervals] Specifies a list of repeating time interval. It should follow `ISO 8601` repeating time interval. Changing this forces a new Backup Policy Blob Storage to be created.
  /// [name] The name which should be used for this Backup Policy Blob Storage. Changing this forces a new Backup Policy Blob Storage to be created.
  /// [operationalDefaultRetentionDuration] The duration of operational default retention rule. It should follow `ISO 8601` duration format. Changing this forces a new Backup Policy Blob Storage to be created.
  /// [retentionRules] One or more `retentionRule` blocks as defined below. Changing this forces a new Backup Policy Blob Storage to be created.
  /// [timeZone] Specifies the Time Zone which should be used by the backup schedule. Changing this forces a new Backup Policy Blob Storage to be created.
  /// [vaultDefaultRetentionDuration] The duration of vault default retention rule. It should follow `ISO 8601` duration format. Changing this forces a new Backup Policy Blob Storage to be created.
  /// [vaultId] The ID of the Backup Vault within which the Backup Policy Blob Storage should exist. Changing this forces a new Backup Policy Blob Storage to be created.
  const BackupPolicyBlobStorageState({
    this.backupRepeatingTimeIntervals,
    this.name,
    this.operationalDefaultRetentionDuration,
    this.retentionRules,
    this.timeZone,
    this.vaultDefaultRetentionDuration,
    this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRepeatingTimeIntervals': ?backupRepeatingTimeIntervals,
      'name': ?name,
      'operationalDefaultRetentionDuration': ?operationalDefaultRetentionDuration,
      'retentionRules': ?pulumi.Input.mapOptionalInputValue<List<BackupPolicyBlobStorageRetentionRule>, List<Map<String, dynamic>>>(retentionRules, (value) => pulumi.Input.encodeList<BackupPolicyBlobStorageRetentionRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeZone': ?timeZone,
      'vaultDefaultRetentionDuration': ?vaultDefaultRetentionDuration,
      'vaultId': ?vaultId,
    };
  }

  factory BackupPolicyBlobStorageState.fromMap(Map<String, dynamic> map) {
    return BackupPolicyBlobStorageState(
      backupRepeatingTimeIntervals: (() { final guardedValue = map['backupRepeatingTimeIntervals']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operationalDefaultRetentionDuration: (() { final guardedValue = map['operationalDefaultRetentionDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retentionRules: (() { final guardedValue = map['retentionRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BackupPolicyBlobStorageRetentionRule>(guardedValue, (value) => BackupPolicyBlobStorageRetentionRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vaultDefaultRetentionDuration: (() { final guardedValue = map['vaultDefaultRetentionDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vaultId: (() { final guardedValue = map['vaultId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
