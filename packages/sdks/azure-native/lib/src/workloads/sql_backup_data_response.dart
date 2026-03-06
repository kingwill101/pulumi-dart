// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dbbackup_policy_properties_response.dart';
import 'existing_recovery_services_vault_response.dart';

/// Defines the SQL Backup data for a virtual instance for SAP.
class SqlBackupDataResponse {
  /// Defines the policy properties for database backup.
  final pulumi.Input<DBBackupPolicyPropertiesResponse> backupPolicy;
  /// The type of backup, VM, SQL or HANA.
  /// Expected value is 'SQL'.
  final pulumi.Input<String> backupType;
  /// The properties of the recovery services vault used for backup.
  final pulumi.Input<ExistingRecoveryServicesVaultResponse> recoveryServicesVault;

  /// Creates a new [SqlBackupDataResponse].
  /// [backupPolicy] Defines the policy properties for database backup.
  /// [backupType] The type of backup, VM, SQL or HANA.
  /// [recoveryServicesVault] The properties of the recovery services vault used for backup.
  const SqlBackupDataResponse({
    required this.backupPolicy,
    required this.backupType,
    required this.recoveryServicesVault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPolicy': pulumi.Input.mapInputValue<DBBackupPolicyPropertiesResponse, Map<String, dynamic>>(backupPolicy, (value) => value.toMap()),
      'backupType': backupType,
      'recoveryServicesVault': pulumi.Input.mapInputValue<ExistingRecoveryServicesVaultResponse, Map<String, dynamic>>(recoveryServicesVault, (value) => value.toMap()),
    };
  }

  factory SqlBackupDataResponse.fromMap(Map<String, dynamic> map) {
    return SqlBackupDataResponse(
      backupPolicy: pulumi.Input.fromValue(DBBackupPolicyPropertiesResponse.fromMap((map['backupPolicy']! as Map).cast<String, dynamic>())),
      backupType: pulumi.Input.fromValue(map['backupType'] as String),
      recoveryServicesVault: pulumi.Input.fromValue(ExistingRecoveryServicesVaultResponse.fromMap((map['recoveryServicesVault']! as Map).cast<String, dynamic>())),
    );
  }
}

