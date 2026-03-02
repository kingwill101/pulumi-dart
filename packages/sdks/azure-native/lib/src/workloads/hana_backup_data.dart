// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dbbackup_policy_properties.dart';
import 'existing_recovery_services_vault.dart';
import 'sslconfiguration.dart';

/// Defines the HANA Backup data for a virtual instance for SAP.
class HanaBackupData {
  /// Defines the policy properties for database backup.
  final pulumi.Input<DBBackupPolicyProperties> backupPolicy;
  /// The type of backup, VM, SQL or HANA.
  /// Expected value is 'HANA'.
  final pulumi.Input<String> backupType;
  /// Defines the policy properties for database backup.
  final pulumi.Input<DBBackupPolicyProperties>? dbInstanceSnapshotBackupPolicy;
  /// Name of the HANA Database User Store Key.
  final pulumi.Input<String> hdbuserstoreKeyName;
  /// Gets or sets the database instance number.
  final pulumi.Input<String>? instanceNumber;
  /// The properties of the recovery services vault used for backup.
  final pulumi.Input<ExistingRecoveryServicesVault> recoveryServicesVault;
  /// Path of the SSL key store.
  final pulumi.Input<SSLConfiguration>? sslConfiguration;

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
      'backupPolicy': pulumi.Input.mapInputValue<DBBackupPolicyProperties, Map<String, dynamic>>(backupPolicy, (value) => value.toMap()),
      'backupType': backupType,
      'dbInstanceSnapshotBackupPolicy': ?pulumi.Input.mapOptionalInputValue<DBBackupPolicyProperties, Map<String, dynamic>>(dbInstanceSnapshotBackupPolicy, (value) => value.toMap()),
      'hdbuserstoreKeyName': hdbuserstoreKeyName,
      'instanceNumber': ?instanceNumber,
      'recoveryServicesVault': pulumi.Input.mapInputValue<ExistingRecoveryServicesVault, Map<String, dynamic>>(recoveryServicesVault, (value) => value.toMap()),
      'sslConfiguration': ?pulumi.Input.mapOptionalInputValue<SSLConfiguration, Map<String, dynamic>>(sslConfiguration, (value) => value.toMap()),
    };
  }

  factory HanaBackupData.fromMap(Map<String, dynamic> map) {
    return HanaBackupData(
      backupPolicy: (DBBackupPolicyProperties.fromMap((map['backupPolicy'] as Map).cast<String, dynamic>())).input(),
      backupType: (map['backupType'] as String).input(),
      dbInstanceSnapshotBackupPolicy: map['dbInstanceSnapshotBackupPolicy'] == null ? null : (DBBackupPolicyProperties.fromMap((map['dbInstanceSnapshotBackupPolicy'] as Map).cast<String, dynamic>())).input(),
      hdbuserstoreKeyName: (map['hdbuserstoreKeyName'] as String).input(),
      instanceNumber: map['instanceNumber'] == null ? null : (map['instanceNumber'] as String).input(),
      recoveryServicesVault: (ExistingRecoveryServicesVault.fromMap((map['recoveryServicesVault'] as Map).cast<String, dynamic>())).input(),
      sslConfiguration: map['sslConfiguration'] == null ? null : (SSLConfiguration.fromMap((map['sslConfiguration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

