// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_exclusion_properties_response.dart';
import 'existing_recovery_services_vault_response.dart';
import 'vmbackup_policy_properties_response.dart';

/// Defines the VM Backup data for a virtual instance for SAP.
class VMBackupDataResponse {
  /// Defines the policy properties for virtual machine backup.
  final pulumi.Input<VMBackupPolicyPropertiesResponse> backupPolicy;
  /// The type of backup, VM, SQL or HANA.
  /// Expected value is 'VM'.
  final pulumi.Input<String> backupType;
  /// Defines the disk exclusion properties for virtual machine backup.
  final pulumi.Input<DiskExclusionPropertiesResponse>? diskExclusionProperties;
  /// The properties of the recovery services vault used for backup.
  final pulumi.Input<ExistingRecoveryServicesVaultResponse> recoveryServicesVault;

  /// Creates a new [VMBackupDataResponse].
  /// [backupPolicy] Defines the policy properties for virtual machine backup.
  /// [backupType] The type of backup, VM, SQL or HANA.
  /// [diskExclusionProperties] Defines the disk exclusion properties for virtual machine backup.
  /// [recoveryServicesVault] The properties of the recovery services vault used for backup.
  const VMBackupDataResponse({
    required this.backupPolicy,
    required this.backupType,
    this.diskExclusionProperties,
    required this.recoveryServicesVault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPolicy': pulumi.Input.mapInputValue<VMBackupPolicyPropertiesResponse, Map<String, dynamic>>(backupPolicy, (value) => value.toMap()),
      'backupType': backupType,
      'diskExclusionProperties': ?pulumi.Input.mapOptionalInputValue<DiskExclusionPropertiesResponse, Map<String, dynamic>>(diskExclusionProperties, (value) => value.toMap()),
      'recoveryServicesVault': pulumi.Input.mapInputValue<ExistingRecoveryServicesVaultResponse, Map<String, dynamic>>(recoveryServicesVault, (value) => value.toMap()),
    };
  }

  factory VMBackupDataResponse.fromMap(Map<String, dynamic> map) {
    return VMBackupDataResponse(
      backupPolicy: pulumi.Input.fromValue(VMBackupPolicyPropertiesResponse.fromMap((map['backupPolicy']! as Map).cast<String, dynamic>())),
      backupType: pulumi.Input.fromValue(map['backupType'] as String),
      diskExclusionProperties: (() { final guardedValue = map['diskExclusionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiskExclusionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      recoveryServicesVault: pulumi.Input.fromValue(ExistingRecoveryServicesVaultResponse.fromMap((map['recoveryServicesVault']! as Map).cast<String, dynamic>())),
    );
  }
}
