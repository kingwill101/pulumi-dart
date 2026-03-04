// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_mysql_flexible_server_default_retention_rule.dart';
import 'backup_policy_mysql_flexible_server_retention_rule.dart';

/// Input properties used for looking up and filtering BackupPolicyMysqlFlexibleServer resources.
class BackupPolicyMysqlFlexibleServerState {
  /// Specifies a list of repeating time interval. It supports weekly back. It should follow `ISO 8601` repeating time interval format. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? backupRepeatingTimeIntervals;

  /// A `default_retention_rule` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<BackupPolicyMysqlFlexibleServerDefaultRetentionRule>?
  defaultRetentionRule;

  /// Specifies the name of the Backup Policy for the MySQL Flexible Server. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// One or more `retention_rule` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<BackupPolicyMysqlFlexibleServerRetentionRule>>?
  retentionRules;

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
    this.backupRepeatingTimeIntervals,
    this.defaultRetentionRule,
    this.name,
    this.retentionRules,
    this.timeZone,
    this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRepeatingTimeIntervals': ?backupRepeatingTimeIntervals,
      'defaultRetentionRule':
          ?pulumi.Input.mapOptionalInputValue<
            BackupPolicyMysqlFlexibleServerDefaultRetentionRule,
            Map<String, dynamic>
          >(defaultRetentionRule, (value) => value.toMap()),
      'name': ?name,
      'retentionRules':
          ?pulumi.Input.mapOptionalInputValue<
            List<BackupPolicyMysqlFlexibleServerRetentionRule>,
            List<Map<String, dynamic>>
          >(
            retentionRules,
            (value) =>
                pulumi.Input.encodeList<
                  BackupPolicyMysqlFlexibleServerRetentionRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'timeZone': ?timeZone,
      'vaultId': ?vaultId,
    };
  }

  factory BackupPolicyMysqlFlexibleServerState.fromMap(
    Map<String, dynamic> map,
  ) {
    return BackupPolicyMysqlFlexibleServerState(
      backupRepeatingTimeIntervals: (() {
        final guardedValue = map['backupRepeatingTimeIntervals'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      defaultRetentionRule: (() {
        final guardedValue = map['defaultRetentionRule'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BackupPolicyMysqlFlexibleServerDefaultRetentionRule.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      retentionRules: (() {
        final guardedValue = map['retentionRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<BackupPolicyMysqlFlexibleServerRetentionRule>(
            guardedValue,
            (value) => BackupPolicyMysqlFlexibleServerRetentionRule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      timeZone: (() {
        final guardedValue = map['timeZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vaultId: (() {
        final guardedValue = map['vaultId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
