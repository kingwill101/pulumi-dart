// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_blob_storage_retention_rule.dart';

/// Input properties used for looking up and filtering BackupPolicyBlobStorage resources.
class BackupPolicyBlobStorageState {
  /// Specifies a list of repeating time interval. It should follow `ISO 8601` repeating time interval. Changing this forces a new Backup Policy Blob Storage to be created.
  final pulumi.Input<List<String>>? backupRepeatingTimeIntervals;
  /// The name which should be used for this Backup Policy Blob Storage. Changing this forces a new Backup Policy Blob Storage to be created.
  final pulumi.Input<String>? name;
  /// The duration of operational default retention rule. It should follow `ISO 8601` duration format. Changing this forces a new Backup Policy Blob Storage to be created.
  final pulumi.Input<String>? operationalDefaultRetentionDuration;
  /// One or more `retention_rule` blocks as defined below. Changing this forces a new Backup Policy Blob Storage to be created.
  ///
  /// > **Note:** Setting `retention_rule` also requires setting `vault_default_retention_duration`.
  final pulumi.Input<List<BackupPolicyBlobStorageRetentionRule>>? retentionRules;
  /// Specifies the Time Zone which should be used by the backup schedule. Changing this forces a new Backup Policy Blob Storage to be created.
  final pulumi.Input<String>? timeZone;
  /// The duration of vault default retention rule. It should follow `ISO 8601` duration format. Changing this forces a new Backup Policy Blob Storage to be created.
  ///
  /// > **Note:** Setting `vault_default_retention_duration` also requires setting `backup_repeating_time_intervals`. At least one of `operational_default_retention_duration` or `vault_default_retention_duration` must be specified.
  final pulumi.Input<String>? vaultDefaultRetentionDuration;
  /// The ID of the Backup Vault within which the Backup Policy Blob Storage should exist. Changing this forces a new Backup Policy Blob Storage to be created.
  final pulumi.Input<String>? vaultId;

  /// Creates a new [BackupPolicyBlobStorageState].
  /// [backupRepeatingTimeIntervals] Specifies a list of repeating time interval. It should follow `ISO 8601` repeating time interval. Changing this forces a new Backup Policy Blob Storage to be created.
  /// [name] The name which should be used for this Backup Policy Blob Storage. Changing this forces a new Backup Policy Blob Storage to be created.
  /// [operationalDefaultRetentionDuration] The duration of operational default retention rule. It should follow `ISO 8601` duration format. Changing this forces a new Backup Policy Blob Storage to be created.
  /// [retentionRules] One or more `retention_rule` blocks as defined below. Changing this forces a new Backup Policy Blob Storage to be created.
  /// [timeZone] Specifies the Time Zone which should be used by the backup schedule. Changing this forces a new Backup Policy Blob Storage to be created.
  /// [vaultDefaultRetentionDuration] The duration of vault default retention rule. It should follow `ISO 8601` duration format. Changing this forces a new Backup Policy Blob Storage to be created.
  /// [vaultId] The ID of the Backup Vault within which the Backup Policy Blob Storage should exist. Changing this forces a new Backup Policy Blob Storage to be created.
  BackupPolicyBlobStorageState({
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
      backupRepeatingTimeIntervals: map['backupRepeatingTimeIntervals'] == null ? null : ((map['backupRepeatingTimeIntervals'] as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      operationalDefaultRetentionDuration: map['operationalDefaultRetentionDuration'] == null ? null : (map['operationalDefaultRetentionDuration'] as String).input(),
      retentionRules: map['retentionRules'] == null ? null : (pulumi.Input.decodeList<BackupPolicyBlobStorageRetentionRule>(map['retentionRules'], (value) => BackupPolicyBlobStorageRetentionRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone'] as String).input(),
      vaultDefaultRetentionDuration: map['vaultDefaultRetentionDuration'] == null ? null : (map['vaultDefaultRetentionDuration'] as String).input(),
      vaultId: map['vaultId'] == null ? null : (map['vaultId'] as String).input(),
    );
  }
}

