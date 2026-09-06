// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dbbackup_policy_properties.dart';

/// Defines the SQL Backup data for a virtual instance for SAP.
class SqlBackupData {
  /// Defines the policy properties for database backup.
  final pulumi.Input<DBBackupPolicyProperties> backupPolicy;
  /// The type of backup, VM, SQL or HANA.
  /// Expected value is 'SQL'.
  final pulumi.Input<String> backupType;
  /// The properties of the recovery services vault used for backup.
  final pulumi.Input<dynamic> recoveryServicesVault;

  /// Creates a new [SqlBackupData].
  /// [backupPolicy] Defines the policy properties for database backup.
  /// [backupType] The type of backup, VM, SQL or HANA.
  /// [recoveryServicesVault] The properties of the recovery services vault used for backup.
  const SqlBackupData({
    required this.backupPolicy,
    required this.backupType,
    required this.recoveryServicesVault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPolicy': pulumi.Input.mapInputValue<DBBackupPolicyProperties, Map<String, dynamic>>(backupPolicy, (value) => value.toMap()),
      'backupType': backupType,
      'recoveryServicesVault': recoveryServicesVault,
    };
  }

  factory SqlBackupData.fromMap(Map<String, dynamic> map) {
    return SqlBackupData(
      backupPolicy: pulumi.Input.fromValue(DBBackupPolicyProperties.fromMap((map['backupPolicy']! as Map).cast<String, dynamic>())),
      backupType: pulumi.Input.fromValue(map['backupType'] as String),
      recoveryServicesVault: pulumi.Input.fromValue(map['recoveryServicesVault']),
    );
  }
}
