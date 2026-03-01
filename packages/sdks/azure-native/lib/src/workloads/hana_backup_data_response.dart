// ignore_for_file: unused_element, unnecessary_cast

import 'dbbackup_policy_properties_response.dart';
import 'existing_recovery_services_vault_response.dart';
import 'sslconfiguration_response.dart';

/// Defines the HANA Backup data for a virtual instance for SAP.
class HanaBackupDataResponse {
  /// Defines the policy properties for database backup.
  final DBBackupPolicyPropertiesResponse backupPolicy;
  /// The type of backup, VM, SQL or HANA.
  /// Expected value is 'HANA'.
  final String backupType;
  /// Defines the policy properties for database backup.
  final DBBackupPolicyPropertiesResponse? dbInstanceSnapshotBackupPolicy;
  /// Name of the HANA Database User Store Key.
  final String hdbuserstoreKeyName;
  /// Gets or sets the database instance number.
  final String? instanceNumber;
  /// The properties of the recovery services vault used for backup.
  final ExistingRecoveryServicesVaultResponse recoveryServicesVault;
  /// Path of the SSL key store.
  final SSLConfigurationResponse? sslConfiguration;

  /// Creates a new [HanaBackupDataResponse].
  /// [backupPolicy] Defines the policy properties for database backup.
  /// [backupType] The type of backup, VM, SQL or HANA.
  /// [dbInstanceSnapshotBackupPolicy] Defines the policy properties for database backup.
  /// [hdbuserstoreKeyName] Name of the HANA Database User Store Key.
  /// [instanceNumber] Gets or sets the database instance number.
  /// [recoveryServicesVault] The properties of the recovery services vault used for backup.
  /// [sslConfiguration] Path of the SSL key store.
  HanaBackupDataResponse({
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

  factory HanaBackupDataResponse.fromMap(Map<String, dynamic> map) {
    return HanaBackupDataResponse(
      backupPolicy: DBBackupPolicyPropertiesResponse.fromMap((map['backupPolicy'] as Map).cast<String, dynamic>()),
      backupType: map['backupType'] as String,
      dbInstanceSnapshotBackupPolicy: map['dbInstanceSnapshotBackupPolicy'] == null ? null : DBBackupPolicyPropertiesResponse.fromMap((map['dbInstanceSnapshotBackupPolicy'] as Map).cast<String, dynamic>()),
      hdbuserstoreKeyName: map['hdbuserstoreKeyName'] as String,
      instanceNumber: map['instanceNumber'] == null ? null : map['instanceNumber'] as String,
      recoveryServicesVault: ExistingRecoveryServicesVaultResponse.fromMap((map['recoveryServicesVault'] as Map).cast<String, dynamic>()),
      sslConfiguration: map['sslConfiguration'] == null ? null : SSLConfigurationResponse.fromMap((map['sslConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

