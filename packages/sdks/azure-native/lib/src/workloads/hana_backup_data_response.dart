// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dbbackup_policy_properties_response.dart';
import 'existing_recovery_services_vault_response.dart';
import 'sslconfiguration_response.dart';

/// Defines the HANA Backup data for a virtual instance for SAP.
class HanaBackupDataResponse {
  /// Defines the policy properties for database backup.
  final pulumi.Input<DBBackupPolicyPropertiesResponse> backupPolicy;
  /// The type of backup, VM, SQL or HANA.
  /// Expected value is 'HANA'.
  final pulumi.Input<String> backupType;
  /// Defines the policy properties for database backup.
  final pulumi.Input<DBBackupPolicyPropertiesResponse>? dbInstanceSnapshotBackupPolicy;
  /// Name of the HANA Database User Store Key.
  final pulumi.Input<String> hdbuserstoreKeyName;
  /// Gets or sets the database instance number.
  final pulumi.Input<String>? instanceNumber;
  /// The properties of the recovery services vault used for backup.
  final pulumi.Input<ExistingRecoveryServicesVaultResponse> recoveryServicesVault;
  /// Path of the SSL key store.
  final pulumi.Input<SSLConfigurationResponse>? sslConfiguration;

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
      'backupPolicy': pulumi.Input.mapInputValue<DBBackupPolicyPropertiesResponse, Map<String, dynamic>>(backupPolicy, (value) => value.toMap()),
      'backupType': backupType,
      'dbInstanceSnapshotBackupPolicy': ?pulumi.Input.mapOptionalInputValue<DBBackupPolicyPropertiesResponse, Map<String, dynamic>>(dbInstanceSnapshotBackupPolicy, (value) => value.toMap()),
      'hdbuserstoreKeyName': hdbuserstoreKeyName,
      'instanceNumber': ?instanceNumber,
      'recoveryServicesVault': pulumi.Input.mapInputValue<ExistingRecoveryServicesVaultResponse, Map<String, dynamic>>(recoveryServicesVault, (value) => value.toMap()),
      'sslConfiguration': ?pulumi.Input.mapOptionalInputValue<SSLConfigurationResponse, Map<String, dynamic>>(sslConfiguration, (value) => value.toMap()),
    };
  }

  factory HanaBackupDataResponse.fromMap(Map<String, dynamic> map) {
    return HanaBackupDataResponse(
      backupPolicy: (DBBackupPolicyPropertiesResponse.fromMap((map['backupPolicy'] as Map).cast<String, dynamic>())).input(),
      backupType: (map['backupType'] as String).input(),
      dbInstanceSnapshotBackupPolicy: map['dbInstanceSnapshotBackupPolicy'] == null ? null : (DBBackupPolicyPropertiesResponse.fromMap((map['dbInstanceSnapshotBackupPolicy'] as Map).cast<String, dynamic>())).input(),
      hdbuserstoreKeyName: (map['hdbuserstoreKeyName'] as String).input(),
      instanceNumber: map['instanceNumber'] == null ? null : (map['instanceNumber'] as String).input(),
      recoveryServicesVault: (ExistingRecoveryServicesVaultResponse.fromMap((map['recoveryServicesVault'] as Map).cast<String, dynamic>())).input(),
      sslConfiguration: map['sslConfiguration'] == null ? null : (SSLConfigurationResponse.fromMap((map['sslConfiguration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

