// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'in_mage_rcm_disk_input.dart';
import 'in_mage_rcm_disks_default_input.dart';
import 'security_profile_properties.dart';
import 'user_created_resource_tag.dart';

/// InMageRcm specific enable protection input.
class InMageRcmEnableProtectionInput {
  /// The default disk input.
  final pulumi.Input<InMageRcmDisksDefaultInput>? disksDefault;
  /// The disks to include list.
  final pulumi.Input<List<InMageRcmDiskInput>>? disksToInclude;
  /// The ARM Id of discovered machine.
  final pulumi.Input<String> fabricDiscoveryMachineId;
  /// The class type.
  /// Expected value is 'InMageRcm'.
  final pulumi.Input<String> instanceType;
  /// The license type.
  final pulumi.Input<String>? licenseType;
  /// The license type for Linux VM's.
  final pulumi.Input<String>? linuxLicenseType;
  /// The multi VM group name.
  final pulumi.Input<String>? multiVmGroupName;
  /// The process server Id.
  final pulumi.Input<String> processServerId;
  /// The run-as account Id.
  final pulumi.Input<String>? runAsAccountId;
  /// The tags for the seed managed disks.
  final pulumi.Input<List<UserCreatedResourceTag>>? seedManagedDiskTags;
  /// The SQL Server license type.
  final pulumi.Input<String>? sqlServerLicenseType;
  /// The target availability set ARM Id.
  final pulumi.Input<String>? targetAvailabilitySetId;
  /// The target availability zone.
  final pulumi.Input<String>? targetAvailabilityZone;
  /// The target boot diagnostics storage account ARM Id.
  final pulumi.Input<String>? targetBootDiagnosticsStorageAccountId;
  /// The tags for the target managed disks.
  final pulumi.Input<List<UserCreatedResourceTag>>? targetManagedDiskTags;
  /// The selected target network ARM Id.
  final pulumi.Input<String>? targetNetworkId;
  /// The tags for the target NICs.
  final pulumi.Input<List<UserCreatedResourceTag>>? targetNicTags;
  /// The target proximity placement group Id.
  final pulumi.Input<String>? targetProximityPlacementGroupId;
  /// The target resource group ARM Id.
  final pulumi.Input<String> targetResourceGroupId;
  /// The selected target subnet name.
  final pulumi.Input<String>? targetSubnetName;
  /// The target VM name.
  final pulumi.Input<String>? targetVmName;
  /// The target VM security profile.
  final pulumi.Input<SecurityProfileProperties>? targetVmSecurityProfile;
  /// The target VM size.
  final pulumi.Input<String>? targetVmSize;
  /// The target VM tags.
  final pulumi.Input<List<UserCreatedResourceTag>>? targetVmTags;
  /// The selected test network ARM Id.
  final pulumi.Input<String>? testNetworkId;
  /// The selected test subnet name.
  final pulumi.Input<String>? testSubnetName;
  /// The OS name selected by user.
  final pulumi.Input<String>? userSelectedOSName;

  /// Creates a new [InMageRcmEnableProtectionInput].
  /// [disksDefault] The default disk input.
  /// [disksToInclude] The disks to include list.
  /// [fabricDiscoveryMachineId] The ARM Id of discovered machine.
  /// [instanceType] The class type.
  /// [licenseType] The license type.
  /// [linuxLicenseType] The license type for Linux VM's.
  /// [multiVmGroupName] The multi VM group name.
  /// [processServerId] The process server Id.
  /// [runAsAccountId] The run-as account Id.
  /// [seedManagedDiskTags] The tags for the seed managed disks.
  /// [sqlServerLicenseType] The SQL Server license type.
  /// [targetAvailabilitySetId] The target availability set ARM Id.
  /// [targetAvailabilityZone] The target availability zone.
  /// [targetBootDiagnosticsStorageAccountId] The target boot diagnostics storage account ARM Id.
  /// [targetManagedDiskTags] The tags for the target managed disks.
  /// [targetNetworkId] The selected target network ARM Id.
  /// [targetNicTags] The tags for the target NICs.
  /// [targetProximityPlacementGroupId] The target proximity placement group Id.
  /// [targetResourceGroupId] The target resource group ARM Id.
  /// [targetSubnetName] The selected target subnet name.
  /// [targetVmName] The target VM name.
  /// [targetVmSecurityProfile] The target VM security profile.
  /// [targetVmSize] The target VM size.
  /// [targetVmTags] The target VM tags.
  /// [testNetworkId] The selected test network ARM Id.
  /// [testSubnetName] The selected test subnet name.
  /// [userSelectedOSName] The OS name selected by user.
  InMageRcmEnableProtectionInput({
    this.disksDefault,
    this.disksToInclude,
    required this.fabricDiscoveryMachineId,
    required this.instanceType,
    this.licenseType,
    this.linuxLicenseType,
    this.multiVmGroupName,
    required this.processServerId,
    this.runAsAccountId,
    this.seedManagedDiskTags,
    this.sqlServerLicenseType,
    this.targetAvailabilitySetId,
    this.targetAvailabilityZone,
    this.targetBootDiagnosticsStorageAccountId,
    this.targetManagedDiskTags,
    this.targetNetworkId,
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
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disksDefault': ?pulumi.Input.mapOptionalInputValue<InMageRcmDisksDefaultInput, Map<String, dynamic>>(disksDefault, (value) => value.toMap()),
      'disksToInclude': ?pulumi.Input.mapOptionalInputValue<List<InMageRcmDiskInput>, List<Map<String, dynamic>>>(disksToInclude, (value) => pulumi.Input.encodeList<InMageRcmDiskInput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fabricDiscoveryMachineId': fabricDiscoveryMachineId,
      'instanceType': instanceType,
      'licenseType': ?licenseType,
      'linuxLicenseType': ?linuxLicenseType,
      'multiVmGroupName': ?multiVmGroupName,
      'processServerId': processServerId,
      'runAsAccountId': ?runAsAccountId,
      'seedManagedDiskTags': ?pulumi.Input.mapOptionalInputValue<List<UserCreatedResourceTag>, List<Map<String, dynamic>>>(seedManagedDiskTags, (value) => pulumi.Input.encodeList<UserCreatedResourceTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sqlServerLicenseType': ?sqlServerLicenseType,
      'targetAvailabilitySetId': ?targetAvailabilitySetId,
      'targetAvailabilityZone': ?targetAvailabilityZone,
      'targetBootDiagnosticsStorageAccountId': ?targetBootDiagnosticsStorageAccountId,
      'targetManagedDiskTags': ?pulumi.Input.mapOptionalInputValue<List<UserCreatedResourceTag>, List<Map<String, dynamic>>>(targetManagedDiskTags, (value) => pulumi.Input.encodeList<UserCreatedResourceTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetNetworkId': ?targetNetworkId,
      'targetNicTags': ?pulumi.Input.mapOptionalInputValue<List<UserCreatedResourceTag>, List<Map<String, dynamic>>>(targetNicTags, (value) => pulumi.Input.encodeList<UserCreatedResourceTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetProximityPlacementGroupId': ?targetProximityPlacementGroupId,
      'targetResourceGroupId': targetResourceGroupId,
      'targetSubnetName': ?targetSubnetName,
      'targetVmName': ?targetVmName,
      'targetVmSecurityProfile': ?pulumi.Input.mapOptionalInputValue<SecurityProfileProperties, Map<String, dynamic>>(targetVmSecurityProfile, (value) => value.toMap()),
      'targetVmSize': ?targetVmSize,
      'targetVmTags': ?pulumi.Input.mapOptionalInputValue<List<UserCreatedResourceTag>, List<Map<String, dynamic>>>(targetVmTags, (value) => pulumi.Input.encodeList<UserCreatedResourceTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'testNetworkId': ?testNetworkId,
      'testSubnetName': ?testSubnetName,
      'userSelectedOSName': ?userSelectedOSName,
    };
  }

  factory InMageRcmEnableProtectionInput.fromMap(Map<String, dynamic> map) {
    return InMageRcmEnableProtectionInput(
      disksDefault: map['disksDefault'] == null ? null : (InMageRcmDisksDefaultInput.fromMap((map['disksDefault'] as Map).cast<String, dynamic>())).input(),
      disksToInclude: map['disksToInclude'] == null ? null : (pulumi.Input.decodeList<InMageRcmDiskInput>(map['disksToInclude'], (value) => InMageRcmDiskInput.fromMap((value as Map).cast<String, dynamic>()))).input(),
      fabricDiscoveryMachineId: (map['fabricDiscoveryMachineId'] as String).input(),
      instanceType: (map['instanceType'] as String).input(),
      licenseType: map['licenseType'] == null ? null : (map['licenseType'] as String).input(),
      linuxLicenseType: map['linuxLicenseType'] == null ? null : (map['linuxLicenseType'] as String).input(),
      multiVmGroupName: map['multiVmGroupName'] == null ? null : (map['multiVmGroupName'] as String).input(),
      processServerId: (map['processServerId'] as String).input(),
      runAsAccountId: map['runAsAccountId'] == null ? null : (map['runAsAccountId'] as String).input(),
      seedManagedDiskTags: map['seedManagedDiskTags'] == null ? null : (pulumi.Input.decodeList<UserCreatedResourceTag>(map['seedManagedDiskTags'], (value) => UserCreatedResourceTag.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sqlServerLicenseType: map['sqlServerLicenseType'] == null ? null : (map['sqlServerLicenseType'] as String).input(),
      targetAvailabilitySetId: map['targetAvailabilitySetId'] == null ? null : (map['targetAvailabilitySetId'] as String).input(),
      targetAvailabilityZone: map['targetAvailabilityZone'] == null ? null : (map['targetAvailabilityZone'] as String).input(),
      targetBootDiagnosticsStorageAccountId: map['targetBootDiagnosticsStorageAccountId'] == null ? null : (map['targetBootDiagnosticsStorageAccountId'] as String).input(),
      targetManagedDiskTags: map['targetManagedDiskTags'] == null ? null : (pulumi.Input.decodeList<UserCreatedResourceTag>(map['targetManagedDiskTags'], (value) => UserCreatedResourceTag.fromMap((value as Map).cast<String, dynamic>()))).input(),
      targetNetworkId: map['targetNetworkId'] == null ? null : (map['targetNetworkId'] as String).input(),
      targetNicTags: map['targetNicTags'] == null ? null : (pulumi.Input.decodeList<UserCreatedResourceTag>(map['targetNicTags'], (value) => UserCreatedResourceTag.fromMap((value as Map).cast<String, dynamic>()))).input(),
      targetProximityPlacementGroupId: map['targetProximityPlacementGroupId'] == null ? null : (map['targetProximityPlacementGroupId'] as String).input(),
      targetResourceGroupId: (map['targetResourceGroupId'] as String).input(),
      targetSubnetName: map['targetSubnetName'] == null ? null : (map['targetSubnetName'] as String).input(),
      targetVmName: map['targetVmName'] == null ? null : (map['targetVmName'] as String).input(),
      targetVmSecurityProfile: map['targetVmSecurityProfile'] == null ? null : (SecurityProfileProperties.fromMap((map['targetVmSecurityProfile'] as Map).cast<String, dynamic>())).input(),
      targetVmSize: map['targetVmSize'] == null ? null : (map['targetVmSize'] as String).input(),
      targetVmTags: map['targetVmTags'] == null ? null : (pulumi.Input.decodeList<UserCreatedResourceTag>(map['targetVmTags'], (value) => UserCreatedResourceTag.fromMap((value as Map).cast<String, dynamic>()))).input(),
      testNetworkId: map['testNetworkId'] == null ? null : (map['testNetworkId'] as String).input(),
      testSubnetName: map['testSubnetName'] == null ? null : (map['testSubnetName'] as String).input(),
      userSelectedOSName: map['userSelectedOSName'] == null ? null : (map['userSelectedOSName'] as String).input(),
    );
  }
}

