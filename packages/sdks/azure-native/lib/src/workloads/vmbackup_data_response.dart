// ignore_for_file: unused_element, unnecessary_cast

import 'disk_exclusion_properties_response.dart';
import 'existing_recovery_services_vault_response.dart';
import 'vmbackup_policy_properties_response.dart';

/// Defines the VM Backup data for a virtual instance for SAP.
class VMBackupDataResponse {
  /// Defines the policy properties for virtual machine backup.
  final VMBackupPolicyPropertiesResponse backupPolicy;
  /// The type of backup, VM, SQL or HANA.
  /// Expected value is 'VM'.
  final String backupType;
  /// Defines the disk exclusion properties for virtual machine backup.
  final DiskExclusionPropertiesResponse? diskExclusionProperties;
  /// The properties of the recovery services vault used for backup.
  final ExistingRecoveryServicesVaultResponse recoveryServicesVault;

  /// Creates a new [VMBackupDataResponse].
  /// [backupPolicy] Defines the policy properties for virtual machine backup.
  /// [backupType] The type of backup, VM, SQL or HANA.
  /// [diskExclusionProperties] Defines the disk exclusion properties for virtual machine backup.
  /// [recoveryServicesVault] The properties of the recovery services vault used for backup.
  VMBackupDataResponse({
    required this.backupPolicy,
    required this.backupType,
    this.diskExclusionProperties,
    required this.recoveryServicesVault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPolicy': backupPolicy.toMap(),
      'backupType': backupType,
      'diskExclusionProperties': ?diskExclusionProperties == null ? null : diskExclusionProperties!.toMap(),
      'recoveryServicesVault': recoveryServicesVault.toMap(),
    };
  }

  factory VMBackupDataResponse.fromMap(Map<String, dynamic> map) {
    return VMBackupDataResponse(
      backupPolicy: VMBackupPolicyPropertiesResponse.fromMap((map['backupPolicy'] as Map).cast<String, dynamic>()),
      backupType: map['backupType'] as String,
      diskExclusionProperties: map['diskExclusionProperties'] == null ? null : DiskExclusionPropertiesResponse.fromMap((map['diskExclusionProperties'] as Map).cast<String, dynamic>()),
      recoveryServicesVault: ExistingRecoveryServicesVaultResponse.fromMap((map['recoveryServicesVault'] as Map).cast<String, dynamic>()),
    );
  }
}

