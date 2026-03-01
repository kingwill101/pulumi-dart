// ignore_for_file: unused_element, unnecessary_cast

import 'dbbackup_policy_properties.dart';
import 'existing_recovery_services_vault.dart';
import 'sslconfiguration.dart';

/// Defines the HANA Backup data for a virtual instance for SAP.
class HanaBackupData {
  /// Defines the policy properties for database backup.
  final DBBackupPolicyProperties backupPolicy;
  /// The type of backup, VM, SQL or HANA.
  /// Expected value is 'HANA'.
  final String backupType;
  /// Defines the policy properties for database backup.
  final DBBackupPolicyProperties? dbInstanceSnapshotBackupPolicy;
  /// Name of the HANA Database User Store Key.
  final String hdbuserstoreKeyName;
  /// Gets or sets the database instance number.
  final String? instanceNumber;
  /// The properties of the recovery services vault used for backup.
  final ExistingRecoveryServicesVault recoveryServicesVault;
  /// Path of the SSL key store.
  final SSLConfiguration? sslConfiguration;

  /// Creates a new [HanaBackupData].
  /// [backupPolicy] Defines the policy properties for database backup.
  /// [backupType] The type of backup, VM, SQL or HANA.
  /// [dbInstanceSnapshotBackupPolicy] Defines the policy properties for database backup.
  /// [hdbuserstoreKeyName] Name of the HANA Database User Store Key.
  /// [instanceNumber] Gets or sets the database instance number.
  /// [recoveryServicesVault] The properties of the recovery services vault used for backup.
  /// [sslConfiguration] Path of the SSL key store.
  HanaBackupData({
    required this.backupPolicy,
    required this.backupType,
    this.dbInstanceSnapshotBackupPolicy,
    required this.hdbuserstoreKeyName,
    this.instanceNumber,
    required this.recoveryServicesVault,
    this.sslConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPolicy': backupPolicy.toMap(),
      'backupType': backupType,
      'dbInstanceSnapshotBackupPolicy': ?dbInstanceSnapshotBackupPolicy == null ? null : dbInstanceSnapshotBackupPolicy!.toMap(),
      'hdbuserstoreKeyName': hdbuserstoreKeyName,
      'instanceNumber': ?instanceNumber,
      'recoveryServicesVault': recoveryServicesVault.toMap(),
      'sslConfiguration': ?sslConfiguration == null ? null : sslConfiguration!.toMap(),
    };
  }

  factory HanaBackupData.fromMap(Map<String, dynamic> map) {
    return HanaBackupData(
      backupPolicy: DBBackupPolicyProperties.fromMap((map['backupPolicy'] as Map).cast<String, dynamic>()),
      backupType: map['backupType'] as String,
      dbInstanceSnapshotBackupPolicy: map['dbInstanceSnapshotBackupPolicy'] == null ? null : DBBackupPolicyProperties.fromMap((map['dbInstanceSnapshotBackupPolicy'] as Map).cast<String, dynamic>()),
      hdbuserstoreKeyName: map['hdbuserstoreKeyName'] as String,
      instanceNumber: map['instanceNumber'] == null ? null : map['instanceNumber'] as String,
      recoveryServicesVault: ExistingRecoveryServicesVault.fromMap((map['recoveryServicesVault'] as Map).cast<String, dynamic>()),
      sslConfiguration: map['sslConfiguration'] == null ? null : SSLConfiguration.fromMap((map['sslConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

