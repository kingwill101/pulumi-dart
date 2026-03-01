// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_mysql_flexible_server_default_retention_rule.dart';
import 'backup_policy_mysql_flexible_server_retention_rule.dart';

/// Input properties used for looking up and filtering BackupPolicyMysqlFlexibleServer resources.
class BackupPolicyMysqlFlexibleServerState {
  /// Specifies a list of repeating time interval. It supports weekly back. It should follow `ISO 8601` repeating time interval format. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? backupRepeatingTimeIntervals;
  /// A `default_retention_rule` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<BackupPolicyMysqlFlexibleServerDefaultRetentionRule>? defaultRetentionRule;
  /// Specifies the name of the Backup Policy for the MySQL Flexible Server. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// One or more `retention_rule` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<BackupPolicyMysqlFlexibleServerRetentionRule>>? retentionRules;
  /// Specifies the Time Zone which should be used by the backup schedule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? timeZone;
  /// The ID of the Backup Vault where the Backup Policy MySQL Flexible Server should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? vaultId;

  /// Creates a new [BackupPolicyMysqlFlexibleServerState].
  /// [backupRepeatingTimeIntervals] Specifies a list of repeating time interval. It supports weekly back. It should follow `ISO 8601` repeating time interval format. Changing this forces a new resource to be created.
  /// [defaultRetentionRule] A `default_retention_rule` block as defined below. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Backup Policy for the MySQL Flexible Server. Changing this forces a new resource to be created.
  /// [retentionRules] One or more `retention_rule` blocks as defined below. Changing this forces a new resource to be created.
  /// [timeZone] Specifies the Time Zone which should be used by the backup schedule. Changing this forces a new resource to be created.
  /// [vaultId] The ID of the Backup Vault where the Backup Policy MySQL Flexible Server should exist. Changing this forces a new resource to be created.
  BackupPolicyMysqlFlexibleServerState({
    pulumi.Output<List<String>>? backupRepeatingTimeIntervals,
    pulumi.Output<BackupPolicyMysqlFlexibleServerDefaultRetentionRule>? defaultRetentionRule,
    pulumi.Output<String>? name,
    pulumi.Output<List<BackupPolicyMysqlFlexibleServerRetentionRule>>? retentionRules,
    pulumi.Output<String>? timeZone,
    pulumi.Output<String>? vaultId,
  }) :
      backupRepeatingTimeIntervals = pulumi.Input.asOptionalInput<List<String>>(backupRepeatingTimeIntervals),
      defaultRetentionRule = pulumi.Input.asOptionalInput<BackupPolicyMysqlFlexibleServerDefaultRetentionRule>(defaultRetentionRule),
      name = pulumi.Input.asOptionalInput<String>(name),
      retentionRules = pulumi.Input.asOptionalInput<List<BackupPolicyMysqlFlexibleServerRetentionRule>>(retentionRules),
      timeZone = pulumi.Input.asOptionalInput<String>(timeZone),
      vaultId = pulumi.Input.asOptionalInput<String>(vaultId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRepeatingTimeIntervals': ?backupRepeatingTimeIntervals,
      'defaultRetentionRule': ?pulumi.Input.mapOptionalInputValue<BackupPolicyMysqlFlexibleServerDefaultRetentionRule, Map<String, dynamic>>(defaultRetentionRule, (value) => value.toMap()),
      'name': ?name,
      'retentionRules': ?pulumi.Input.mapOptionalInputValue<List<BackupPolicyMysqlFlexibleServerRetentionRule>, List<Map<String, dynamic>>>(retentionRules, (value) => pulumi.Input.encodeList<BackupPolicyMysqlFlexibleServerRetentionRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeZone': ?timeZone,
      'vaultId': ?vaultId,
    };
  }

  factory BackupPolicyMysqlFlexibleServerState.fromMap(Map<String, dynamic> map) {
    return BackupPolicyMysqlFlexibleServerState(
      backupRepeatingTimeIntervals: map['backupRepeatingTimeIntervals'] == null ? null : pulumi.Output.create<List<String>>((map['backupRepeatingTimeIntervals'] as List).cast<String>()),
      defaultRetentionRule: map['defaultRetentionRule'] == null ? null : pulumi.Output.create<BackupPolicyMysqlFlexibleServerDefaultRetentionRule>(BackupPolicyMysqlFlexibleServerDefaultRetentionRule.fromMap((map['defaultRetentionRule'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      retentionRules: map['retentionRules'] == null ? null : pulumi.Output.create<List<BackupPolicyMysqlFlexibleServerRetentionRule>>(pulumi.Input.decodeList<BackupPolicyMysqlFlexibleServerRetentionRule>(map['retentionRules'], (value) => BackupPolicyMysqlFlexibleServerRetentionRule.fromMap((value as Map).cast<String, dynamic>()))),
      timeZone: map['timeZone'] == null ? null : pulumi.Output.create<String>(map['timeZone'] as String),
      vaultId: map['vaultId'] == null ? null : pulumi.Output.create<String>(map['vaultId'] as String),
    );
  }
}

