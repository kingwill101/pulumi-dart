// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_exclusion_properties.dart';
import 'vmbackup_policy_properties.dart';

/// Defines the VM Backup data for a virtual instance for SAP.
class VMBackupData {
  /// Defines the policy properties for virtual machine backup.
  final pulumi.Input<VMBackupPolicyProperties> backupPolicy;
  /// The type of backup, VM, SQL or HANA.
  /// Expected value is 'VM'.
  final pulumi.Input<String> backupType;
  /// Defines the disk exclusion properties for virtual machine backup.
  final pulumi.Input<DiskExclusionProperties?>? diskExclusionProperties;
  /// The properties of the recovery services vault used for backup.
  final pulumi.Input<dynamic> recoveryServicesVault;

  /// Creates a new [VMBackupData].
  /// [backupPolicy] Defines the policy properties for virtual machine backup.
  /// [backupType] The type of backup, VM, SQL or HANA.
  /// [diskExclusionProperties] Defines the disk exclusion properties for virtual machine backup.
  /// [recoveryServicesVault] The properties of the recovery services vault used for backup.
  const VMBackupData({
    required this.backupPolicy,
    required this.backupType,
    this.diskExclusionProperties,
    required this.recoveryServicesVault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPolicy': pulumi.Input.mapInputValue<VMBackupPolicyProperties, Map<String, dynamic>>(backupPolicy, (value) => value.toMap()),
      'backupType': backupType,
      'diskExclusionProperties': ?pulumi.Input.mapOptionalInputValue<DiskExclusionProperties, Map<String, dynamic>>(diskExclusionProperties, (value) => value.toMap()),
      'recoveryServicesVault': recoveryServicesVault,
    };
  }

  factory VMBackupData.fromMap(Map<String, dynamic> map) {
    return VMBackupData(
      backupPolicy: pulumi.Input.fromValue(VMBackupPolicyProperties.fromMap((map['backupPolicy']! as Map).cast<String, dynamic>())),
      backupType: pulumi.Input.fromValue(map['backupType'] as String),
      diskExclusionProperties: (() { final guardedValue = map['diskExclusionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiskExclusionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      recoveryServicesVault: pulumi.Input.fromValue(map['recoveryServicesVault']),
    );
  }
}
