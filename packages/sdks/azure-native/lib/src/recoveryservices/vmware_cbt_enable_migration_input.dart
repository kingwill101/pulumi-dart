// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_cbt_disk_input.dart';
import 'vmware_cbt_security_profile_properties.dart';

/// VMwareCbt specific enable migration input.
class VMwareCbtEnableMigrationInput {
  /// The confidential VM key vault Id for ADE installation.
  final pulumi.Input<String?>? confidentialVmKeyVaultId;
  /// The data mover run as account Id.
  final pulumi.Input<String> dataMoverRunAsAccountId;
  /// The disks to include list.
  final pulumi.Input<List<VMwareCbtDiskInput>> disksToInclude;
  /// The class type.
  /// Expected value is 'VMwareCbt'.
  final pulumi.Input<String> instanceType;
  /// License type.
  final pulumi.Input<dynamic>? licenseType;
  /// The license type for Linux VM's.
  final pulumi.Input<dynamic>? linuxLicenseType;
  /// A value indicating whether auto resync is to be done.
  final pulumi.Input<String?>? performAutoResync;
  /// A value indicating whether bulk SQL RP registration to be done.
  final pulumi.Input<String?>? performSqlBulkRegistration;
  /// The tags for the seed disks.
  final pulumi.Input<Map<String, String>?>? seedDiskTags;
  /// The snapshot run as account Id.
  final pulumi.Input<String> snapshotRunAsAccountId;
  /// The SQL Server license type.
  final pulumi.Input<dynamic>? sqlServerLicenseType;
  /// The target availability set ARM Id.
  final pulumi.Input<String?>? targetAvailabilitySetId;
  /// The target availability zone.
  final pulumi.Input<String?>? targetAvailabilityZone;
  /// The target boot diagnostics storage account ARM Id.
  final pulumi.Input<String?>? targetBootDiagnosticsStorageAccountId;
  /// The tags for the target disks.
  final pulumi.Input<Map<String, String>?>? targetDiskTags;
  /// The target network ARM Id.
  final pulumi.Input<String> targetNetworkId;
  /// The tags for the target NICs.
  final pulumi.Input<Map<String, String>?>? targetNicTags;
  /// The target proximity placement group ARM Id.
  final pulumi.Input<String?>? targetProximityPlacementGroupId;
  /// The target resource group ARM Id.
  final pulumi.Input<String> targetResourceGroupId;
  /// The target subnet name.
  final pulumi.Input<String?>? targetSubnetName;
  /// The target VM name.
  final pulumi.Input<String?>? targetVmName;
  /// The target VM security profile.
  final pulumi.Input<VMwareCbtSecurityProfileProperties?>? targetVmSecurityProfile;
  /// The target VM size.
  final pulumi.Input<String?>? targetVmSize;
  /// The target VM tags.
  final pulumi.Input<Map<String, String>?>? targetVmTags;
  /// The selected test network ARM Id.
  final pulumi.Input<String?>? testNetworkId;
  /// The selected test subnet name.
  final pulumi.Input<String?>? testSubnetName;
  /// The OS name selected by user.
  final pulumi.Input<String?>? userSelectedOSName;
  /// The ARM Id of the VM discovered in VMware.
  final pulumi.Input<String> vmwareMachineId;

  /// Creates a new [VMwareCbtEnableMigrationInput].
  /// [confidentialVmKeyVaultId] The confidential VM key vault Id for ADE installation.
  /// [dataMoverRunAsAccountId] The data mover run as account Id.
  /// [disksToInclude] The disks to include list.
  /// [instanceType] The class type.
  /// [licenseType] License type.
  /// [linuxLicenseType] The license type for Linux VM's.
  /// [performAutoResync] A value indicating whether auto resync is to be done.
  /// [performSqlBulkRegistration] A value indicating whether bulk SQL RP registration to be done.
  /// [seedDiskTags] The tags for the seed disks.
  /// [snapshotRunAsAccountId] The snapshot run as account Id.
  /// [sqlServerLicenseType] The SQL Server license type.
  /// [targetAvailabilitySetId] The target availability set ARM Id.
  /// [targetAvailabilityZone] The target availability zone.
  /// [targetBootDiagnosticsStorageAccountId] The target boot diagnostics storage account ARM Id.
  /// [targetDiskTags] The tags for the target disks.
  /// [targetNetworkId] The target network ARM Id.
  /// [targetNicTags] The tags for the target NICs.
  /// [targetProximityPlacementGroupId] The target proximity placement group ARM Id.
  /// [targetResourceGroupId] The target resource group ARM Id.
  /// [targetSubnetName] The target subnet name.
  /// [targetVmName] The target VM name.
  /// [targetVmSecurityProfile] The target VM security profile.
  /// [targetVmSize] The target VM size.
  /// [targetVmTags] The target VM tags.
  /// [testNetworkId] The selected test network ARM Id.
  /// [testSubnetName] The selected test subnet name.
  /// [userSelectedOSName] The OS name selected by user.
  /// [vmwareMachineId] The ARM Id of the VM discovered in VMware.
  const VMwareCbtEnableMigrationInput({
    this.confidentialVmKeyVaultId,
    required this.dataMoverRunAsAccountId,
    required this.disksToInclude,
    required this.instanceType,
    this.licenseType,
    this.linuxLicenseType,
    this.performAutoResync,
    this.performSqlBulkRegistration,
    this.seedDiskTags,
    required this.snapshotRunAsAccountId,
    this.sqlServerLicenseType,
    this.targetAvailabilitySetId,
    this.targetAvailabilityZone,
    this.targetBootDiagnosticsStorageAccountId,
    this.targetDiskTags,
    required this.targetNetworkId,
    this.targetNicTags,
    this.targetProximityPlacementGroupId,
    required this.targetResourceGroupId,
    this.targetSubnetName,
    this.targetVmName,
    this.targetVmSecurityProfile,
    this.targetVmSize,
    this.targetVmTags,
    this.testNetworkId,
    this.testSubnetName,
    this.userSelectedOSName,
    required this.vmwareMachineId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidentialVmKeyVaultId': ?confidentialVmKeyVaultId,
      'dataMoverRunAsAccountId': dataMoverRunAsAccountId,
      'disksToInclude': pulumi.Input.mapInputValue<List<VMwareCbtDiskInput>, List<Map<String, dynamic>>>(disksToInclude, (value) => pulumi.Input.encodeList<VMwareCbtDiskInput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceType': instanceType,
      'licenseType': ?licenseType,
      'linuxLicenseType': ?linuxLicenseType,
      'performAutoResync': ?performAutoResync,
      'performSqlBulkRegistration': ?performSqlBulkRegistration,
      'seedDiskTags': ?seedDiskTags,
      'snapshotRunAsAccountId': snapshotRunAsAccountId,
      'sqlServerLicenseType': ?sqlServerLicenseType,
      'targetAvailabilitySetId': ?targetAvailabilitySetId,
      'targetAvailabilityZone': ?targetAvailabilityZone,
      'targetBootDiagnosticsStorageAccountId': ?targetBootDiagnosticsStorageAccountId,
      'targetDiskTags': ?targetDiskTags,
      'targetNetworkId': targetNetworkId,
      'targetNicTags': ?targetNicTags,
      'targetProximityPlacementGroupId': ?targetProximityPlacementGroupId,
      'targetResourceGroupId': targetResourceGroupId,
      'targetSubnetName': ?targetSubnetName,
      'targetVmName': ?targetVmName,
      'targetVmSecurityProfile': ?pulumi.Input.mapOptionalInputValue<VMwareCbtSecurityProfileProperties, Map<String, dynamic>>(targetVmSecurityProfile, (value) => value.toMap()),
      'targetVmSize': ?targetVmSize,
      'targetVmTags': ?targetVmTags,
      'testNetworkId': ?testNetworkId,
      'testSubnetName': ?testSubnetName,
      'userSelectedOSName': ?userSelectedOSName,
      'vmwareMachineId': vmwareMachineId,
    };
  }

  factory VMwareCbtEnableMigrationInput.fromMap(Map<String, dynamic> map) {
    return VMwareCbtEnableMigrationInput(
      confidentialVmKeyVaultId: (() { final guardedValue = map['confidentialVmKeyVaultId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataMoverRunAsAccountId: pulumi.Input.fromValue(map['dataMoverRunAsAccountId'] as String),
      disksToInclude: pulumi.Input.fromValue(pulumi.Input.decodeList<VMwareCbtDiskInput>(map['disksToInclude']!, (value) => VMwareCbtDiskInput.fromMap((value as Map).cast<String, dynamic>()))),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      licenseType: (() { final guardedValue = map['licenseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      linuxLicenseType: (() { final guardedValue = map['linuxLicenseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      performAutoResync: (() { final guardedValue = map['performAutoResync']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      performSqlBulkRegistration: (() { final guardedValue = map['performSqlBulkRegistration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      seedDiskTags: (() { final guardedValue = map['seedDiskTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      snapshotRunAsAccountId: pulumi.Input.fromValue(map['snapshotRunAsAccountId'] as String),
      sqlServerLicenseType: (() { final guardedValue = map['sqlServerLicenseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      targetAvailabilitySetId: (() { final guardedValue = map['targetAvailabilitySetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetAvailabilityZone: (() { final guardedValue = map['targetAvailabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetBootDiagnosticsStorageAccountId: (() { final guardedValue = map['targetBootDiagnosticsStorageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetDiskTags: (() { final guardedValue = map['targetDiskTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetNetworkId: pulumi.Input.fromValue(map['targetNetworkId'] as String),
      targetNicTags: (() { final guardedValue = map['targetNicTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetProximityPlacementGroupId: (() { final guardedValue = map['targetProximityPlacementGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetResourceGroupId: pulumi.Input.fromValue(map['targetResourceGroupId'] as String),
      targetSubnetName: (() { final guardedValue = map['targetSubnetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetVmName: (() { final guardedValue = map['targetVmName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetVmSecurityProfile: (() { final guardedValue = map['targetVmSecurityProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VMwareCbtSecurityProfileProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetVmSize: (() { final guardedValue = map['targetVmSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetVmTags: (() { final guardedValue = map['targetVmTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      testNetworkId: (() { final guardedValue = map['testNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      testSubnetName: (() { final guardedValue = map['testSubnetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userSelectedOSName: (() { final guardedValue = map['userSelectedOSName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmwareMachineId: pulumi.Input.fromValue(map['vmwareMachineId'] as String),
    );
  }
}
