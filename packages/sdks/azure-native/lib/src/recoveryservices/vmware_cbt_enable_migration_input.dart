// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_cbt_disk_input.dart';
import 'vmware_cbt_security_profile_properties.dart';

/// VMwareCbt specific enable migration input.
class VMwareCbtEnableMigrationInput {
  /// The confidential VM key vault Id for ADE installation.
  final String? confidentialVmKeyVaultId;
  /// The data mover run as account Id.
  final String dataMoverRunAsAccountId;
  /// The disks to include list.
  final List<VMwareCbtDiskInput> disksToInclude;
  /// The class type.
  /// Expected value is 'VMwareCbt'.
  final String instanceType;
  /// License type.
  final String? licenseType;
  /// The license type for Linux VM's.
  final String? linuxLicenseType;
  /// A value indicating whether auto resync is to be done.
  final String? performAutoResync;
  /// A value indicating whether bulk SQL RP registration to be done.
  final String? performSqlBulkRegistration;
  /// The tags for the seed disks.
  final Map<String, String>? seedDiskTags;
  /// The snapshot run as account Id.
  final String snapshotRunAsAccountId;
  /// The SQL Server license type.
  final String? sqlServerLicenseType;
  /// The target availability set ARM Id.
  final String? targetAvailabilitySetId;
  /// The target availability zone.
  final String? targetAvailabilityZone;
  /// The target boot diagnostics storage account ARM Id.
  final String? targetBootDiagnosticsStorageAccountId;
  /// The tags for the target disks.
  final Map<String, String>? targetDiskTags;
  /// The target network ARM Id.
  final String targetNetworkId;
  /// The tags for the target NICs.
  final Map<String, String>? targetNicTags;
  /// The target proximity placement group ARM Id.
  final String? targetProximityPlacementGroupId;
  /// The target resource group ARM Id.
  final String targetResourceGroupId;
  /// The target subnet name.
  final String? targetSubnetName;
  /// The target VM name.
  final String? targetVmName;
  /// The target VM security profile.
  final VMwareCbtSecurityProfileProperties? targetVmSecurityProfile;
  /// The target VM size.
  final String? targetVmSize;
  /// The target VM tags.
  final Map<String, String>? targetVmTags;
  /// The selected test network ARM Id.
  final String? testNetworkId;
  /// The selected test subnet name.
  final String? testSubnetName;
  /// The OS name selected by user.
  final String? userSelectedOSName;
  /// The ARM Id of the VM discovered in VMware.
  final String vmwareMachineId;

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
      'disksToInclude': pulumi.Input.encodeList<VMwareCbtDiskInput, Map<String, dynamic>>(disksToInclude, (value) => value.toMap()),
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
      'targetVmSecurityProfile': ?targetVmSecurityProfile == null ? null : targetVmSecurityProfile!.toMap(),
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
      confidentialVmKeyVaultId: map['confidentialVmKeyVaultId'] == null ? null : map['confidentialVmKeyVaultId'] as String,
      dataMoverRunAsAccountId: map['dataMoverRunAsAccountId'] as String,
      disksToInclude: pulumi.Input.decodeList<VMwareCbtDiskInput>(map['disksToInclude'], (value) => VMwareCbtDiskInput.fromMap((value as Map).cast<String, dynamic>())),
      instanceType: map['instanceType'] as String,
      licenseType: map['licenseType'] == null ? null : map['licenseType'] as String,
      linuxLicenseType: map['linuxLicenseType'] == null ? null : map['linuxLicenseType'] as String,
      performAutoResync: map['performAutoResync'] == null ? null : map['performAutoResync'] as String,
      performSqlBulkRegistration: map['performSqlBulkRegistration'] == null ? null : map['performSqlBulkRegistration'] as String,
      seedDiskTags: map['seedDiskTags'] == null ? null : (map['seedDiskTags'] as Map).cast<String, String>(),
      snapshotRunAsAccountId: map['snapshotRunAsAccountId'] as String,
      sqlServerLicenseType: map['sqlServerLicenseType'] == null ? null : map['sqlServerLicenseType'] as String,
      targetAvailabilitySetId: map['targetAvailabilitySetId'] == null ? null : map['targetAvailabilitySetId'] as String,
      targetAvailabilityZone: map['targetAvailabilityZone'] == null ? null : map['targetAvailabilityZone'] as String,
      targetBootDiagnosticsStorageAccountId: map['targetBootDiagnosticsStorageAccountId'] == null ? null : map['targetBootDiagnosticsStorageAccountId'] as String,
      targetDiskTags: map['targetDiskTags'] == null ? null : (map['targetDiskTags'] as Map).cast<String, String>(),
      targetNetworkId: map['targetNetworkId'] as String,
      targetNicTags: map['targetNicTags'] == null ? null : (map['targetNicTags'] as Map).cast<String, String>(),
      targetProximityPlacementGroupId: map['targetProximityPlacementGroupId'] == null ? null : map['targetProximityPlacementGroupId'] as String,
      targetResourceGroupId: map['targetResourceGroupId'] as String,
      targetSubnetName: map['targetSubnetName'] == null ? null : map['targetSubnetName'] as String,
      targetVmName: map['targetVmName'] == null ? null : map['targetVmName'] as String,
      targetVmSecurityProfile: map['targetVmSecurityProfile'] == null ? null : VMwareCbtSecurityProfileProperties.fromMap((map['targetVmSecurityProfile'] as Map).cast<String, dynamic>()),
      targetVmSize: map['targetVmSize'] == null ? null : map['targetVmSize'] as String,
      targetVmTags: map['targetVmTags'] == null ? null : (map['targetVmTags'] as Map).cast<String, String>(),
      testNetworkId: map['testNetworkId'] == null ? null : map['testNetworkId'] as String,
      testSubnetName: map['testSubnetName'] == null ? null : map['testSubnetName'] as String,
      userSelectedOSName: map['userSelectedOSName'] == null ? null : map['userSelectedOSName'] as String,
      vmwareMachineId: map['vmwareMachineId'] as String,
    );
  }
}

