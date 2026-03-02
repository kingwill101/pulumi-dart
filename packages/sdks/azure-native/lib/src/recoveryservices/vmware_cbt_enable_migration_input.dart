// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_cbt_disk_input.dart';
import 'vmware_cbt_security_profile_properties.dart';

/// VMwareCbt specific enable migration input.
class VMwareCbtEnableMigrationInput {
  /// The confidential VM key vault Id for ADE installation.
  final pulumi.Input<String>? confidentialVmKeyVaultId;
  /// The data mover run as account Id.
  final pulumi.Input<String> dataMoverRunAsAccountId;
  /// The disks to include list.
  final pulumi.Input<List<VMwareCbtDiskInput>> disksToInclude;
  /// The class type.
  /// Expected value is 'VMwareCbt'.
  final pulumi.Input<String> instanceType;
  /// License type.
  final pulumi.Input<String>? licenseType;
  /// The license type for Linux VM's.
  final pulumi.Input<String>? linuxLicenseType;
  /// A value indicating whether auto resync is to be done.
  final pulumi.Input<String>? performAutoResync;
  /// A value indicating whether bulk SQL RP registration to be done.
  final pulumi.Input<String>? performSqlBulkRegistration;
  /// The tags for the seed disks.
  final pulumi.Input<Map<String, String>>? seedDiskTags;
  /// The snapshot run as account Id.
  final pulumi.Input<String> snapshotRunAsAccountId;
  /// The SQL Server license type.
  final pulumi.Input<String>? sqlServerLicenseType;
  /// The target availability set ARM Id.
  final pulumi.Input<String>? targetAvailabilitySetId;
  /// The target availability zone.
  final pulumi.Input<String>? targetAvailabilityZone;
  /// The target boot diagnostics storage account ARM Id.
  final pulumi.Input<String>? targetBootDiagnosticsStorageAccountId;
  /// The tags for the target disks.
  final pulumi.Input<Map<String, String>>? targetDiskTags;
  /// The target network ARM Id.
  final pulumi.Input<String> targetNetworkId;
  /// The tags for the target NICs.
  final pulumi.Input<Map<String, String>>? targetNicTags;
  /// The target proximity placement group ARM Id.
  final pulumi.Input<String>? targetProximityPlacementGroupId;
  /// The target resource group ARM Id.
  final pulumi.Input<String> targetResourceGroupId;
  /// The target subnet name.
  final pulumi.Input<String>? targetSubnetName;
  /// The target VM name.
  final pulumi.Input<String>? targetVmName;
  /// The target VM security profile.
  final pulumi.Input<VMwareCbtSecurityProfileProperties>? targetVmSecurityProfile;
  /// The target VM size.
  final pulumi.Input<String>? targetVmSize;
  /// The target VM tags.
  final pulumi.Input<Map<String, String>>? targetVmTags;
  /// The selected test network ARM Id.
  final pulumi.Input<String>? testNetworkId;
  /// The selected test subnet name.
  final pulumi.Input<String>? testSubnetName;
  /// The OS name selected by user.
  final pulumi.Input<String>? userSelectedOSName;
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
  VMwareCbtEnableMigrationInput({
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
      confidentialVmKeyVaultId: map['confidentialVmKeyVaultId'] == null ? null : (map['confidentialVmKeyVaultId'] as String).input(),
      dataMoverRunAsAccountId: (map['dataMoverRunAsAccountId'] as String).input(),
      disksToInclude: (pulumi.Input.decodeList<VMwareCbtDiskInput>(map['disksToInclude'], (value) => VMwareCbtDiskInput.fromMap((value as Map).cast<String, dynamic>()))).input(),
      instanceType: (map['instanceType'] as String).input(),
      licenseType: map['licenseType'] == null ? null : (map['licenseType'] as String).input(),
      linuxLicenseType: map['linuxLicenseType'] == null ? null : (map['linuxLicenseType'] as String).input(),
      performAutoResync: map['performAutoResync'] == null ? null : (map['performAutoResync'] as String).input(),
      performSqlBulkRegistration: map['performSqlBulkRegistration'] == null ? null : (map['performSqlBulkRegistration'] as String).input(),
      seedDiskTags: map['seedDiskTags'] == null ? null : ((map['seedDiskTags'] as Map).cast<String, String>()).input(),
      snapshotRunAsAccountId: (map['snapshotRunAsAccountId'] as String).input(),
      sqlServerLicenseType: map['sqlServerLicenseType'] == null ? null : (map['sqlServerLicenseType'] as String).input(),
      targetAvailabilitySetId: map['targetAvailabilitySetId'] == null ? null : (map['targetAvailabilitySetId'] as String).input(),
      targetAvailabilityZone: map['targetAvailabilityZone'] == null ? null : (map['targetAvailabilityZone'] as String).input(),
      targetBootDiagnosticsStorageAccountId: map['targetBootDiagnosticsStorageAccountId'] == null ? null : (map['targetBootDiagnosticsStorageAccountId'] as String).input(),
      targetDiskTags: map['targetDiskTags'] == null ? null : ((map['targetDiskTags'] as Map).cast<String, String>()).input(),
      targetNetworkId: (map['targetNetworkId'] as String).input(),
      targetNicTags: map['targetNicTags'] == null ? null : ((map['targetNicTags'] as Map).cast<String, String>()).input(),
      targetProximityPlacementGroupId: map['targetProximityPlacementGroupId'] == null ? null : (map['targetProximityPlacementGroupId'] as String).input(),
      targetResourceGroupId: (map['targetResourceGroupId'] as String).input(),
      targetSubnetName: map['targetSubnetName'] == null ? null : (map['targetSubnetName'] as String).input(),
      targetVmName: map['targetVmName'] == null ? null : (map['targetVmName'] as String).input(),
      targetVmSecurityProfile: map['targetVmSecurityProfile'] == null ? null : (VMwareCbtSecurityProfileProperties.fromMap((map['targetVmSecurityProfile'] as Map).cast<String, dynamic>())).input(),
      targetVmSize: map['targetVmSize'] == null ? null : (map['targetVmSize'] as String).input(),
      targetVmTags: map['targetVmTags'] == null ? null : ((map['targetVmTags'] as Map).cast<String, String>()).input(),
      testNetworkId: map['testNetworkId'] == null ? null : (map['testNetworkId'] as String).input(),
      testSubnetName: map['testSubnetName'] == null ? null : (map['testSubnetName'] as String).input(),
      userSelectedOSName: map['userSelectedOSName'] == null ? null : (map['userSelectedOSName'] as String).input(),
      vmwareMachineId: (map['vmwareMachineId'] as String).input(),
    );
  }
}

