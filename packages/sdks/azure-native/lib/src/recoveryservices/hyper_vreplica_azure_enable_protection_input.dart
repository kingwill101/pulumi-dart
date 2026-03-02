// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hyper_vreplica_azure_disk_input_details.dart';
import 'security_profile_properties.dart';

/// HyperVReplicaAzure specific enable protection input.
class HyperVReplicaAzureEnableProtectionInput {
  /// The DiskEncryptionSet ARM Id.
  final pulumi.Input<String>? diskEncryptionSetId;
  /// The disk type.
  final pulumi.Input<String>? diskType;
  /// The list of VHD Ids of disks to be protected.
  final pulumi.Input<List<String>>? disksToInclude;
  /// The disks to include list for managed disks.
  final pulumi.Input<List<HyperVReplicaAzureDiskInputDetails>>? disksToIncludeForManagedDisks;
  /// The selected option to enable RDP\SSH on target vm after failover. String value of SrsDataContract.EnableRDPOnTargetOption enum.
  final pulumi.Input<String>? enableRdpOnTargetOption;
  /// The Hyper-V host VM Id.
  final pulumi.Input<String>? hvHostVmId;
  /// The class type.
  /// Expected value is 'HyperVReplicaAzure'.
  final pulumi.Input<String> instanceType;
  /// License type.
  final pulumi.Input<String>? licenseType;
  /// The license type for Linux VM's.
  final pulumi.Input<String>? linuxLicenseType;
  /// The storage account to be used for logging during replication.
  final pulumi.Input<String>? logStorageAccountId;
  /// The OS type associated with VM.
  final pulumi.Input<String>? osType;
  /// The tags for the seed managed disks.
  final pulumi.Input<Map<String, String>>? seedManagedDiskTags;
  /// The SQL Server license type.
  final pulumi.Input<String>? sqlServerLicenseType;
  /// The target availability set ARM Id for resource manager deployment.
  final pulumi.Input<String>? targetAvailabilitySetId;
  /// The target availability zone.
  final pulumi.Input<String>? targetAvailabilityZone;
  /// The selected target Azure network Id.
  final pulumi.Input<String>? targetAzureNetworkId;
  /// The selected target Azure subnet Id.
  final pulumi.Input<String>? targetAzureSubnetId;
  /// The Id of the target resource group (for classic deployment) in which the failover VM is to be created.
  final pulumi.Input<String>? targetAzureV1ResourceGroupId;
  /// The Id of the target resource group (for resource manager deployment) in which the failover VM is to be created.
  final pulumi.Input<String>? targetAzureV2ResourceGroupId;
  /// The target azure VM Name.
  final pulumi.Input<String>? targetAzureVmName;
  /// The tags for the target managed disks.
  final pulumi.Input<Map<String, String>>? targetManagedDiskTags;
  /// The tags for the target NICs.
  final pulumi.Input<Map<String, String>>? targetNicTags;
  /// The proximity placement group ARM Id.
  final pulumi.Input<String>? targetProximityPlacementGroupId;
  /// The storage account Id.
  final pulumi.Input<String>? targetStorageAccountId;
  /// The target VM security profile.
  final pulumi.Input<SecurityProfileProperties>? targetVmSecurityProfile;
  /// The target VM size.
  final pulumi.Input<String>? targetVmSize;
  /// The target VM tags.
  final pulumi.Input<Map<String, String>>? targetVmTags;
  /// A value indicating whether managed disks should be used during failover.
  final pulumi.Input<String>? useManagedDisks;
  /// A value indicating whether managed disks should be used during replication.
  final pulumi.Input<String>? useManagedDisksForReplication;
  /// The OS name selected by user.
  final pulumi.Input<String>? userSelectedOSName;
  /// The OS disk VHD id associated with VM.
  final pulumi.Input<String>? vhdId;
  /// The VM Name.
  final pulumi.Input<String>? vmName;

  /// Creates a new [HyperVReplicaAzureEnableProtectionInput].
  /// [diskEncryptionSetId] The DiskEncryptionSet ARM Id.
  /// [diskType] The disk type.
  /// [disksToInclude] The list of VHD Ids of disks to be protected.
  /// [disksToIncludeForManagedDisks] The disks to include list for managed disks.
  /// [enableRdpOnTargetOption] The selected option to enable RDP\SSH on target vm after failover. String value of SrsDataContract.EnableRDPOnTargetOption enum.
  /// [hvHostVmId] The Hyper-V host VM Id.
  /// [instanceType] The class type.
  /// [licenseType] License type.
  /// [linuxLicenseType] The license type for Linux VM's.
  /// [logStorageAccountId] The storage account to be used for logging during replication.
  /// [osType] The OS type associated with VM.
  /// [seedManagedDiskTags] The tags for the seed managed disks.
  /// [sqlServerLicenseType] The SQL Server license type.
  /// [targetAvailabilitySetId] The target availability set ARM Id for resource manager deployment.
  /// [targetAvailabilityZone] The target availability zone.
  /// [targetAzureNetworkId] The selected target Azure network Id.
  /// [targetAzureSubnetId] The selected target Azure subnet Id.
  /// [targetAzureV1ResourceGroupId] The Id of the target resource group (for classic deployment) in which the failover VM is to be created.
  /// [targetAzureV2ResourceGroupId] The Id of the target resource group (for resource manager deployment) in which the failover VM is to be created.
  /// [targetAzureVmName] The target azure VM Name.
  /// [targetManagedDiskTags] The tags for the target managed disks.
  /// [targetNicTags] The tags for the target NICs.
  /// [targetProximityPlacementGroupId] The proximity placement group ARM Id.
  /// [targetStorageAccountId] The storage account Id.
  /// [targetVmSecurityProfile] The target VM security profile.
  /// [targetVmSize] The target VM size.
  /// [targetVmTags] The target VM tags.
  /// [useManagedDisks] A value indicating whether managed disks should be used during failover.
  /// [useManagedDisksForReplication] A value indicating whether managed disks should be used during replication.
  /// [userSelectedOSName] The OS name selected by user.
  /// [vhdId] The OS disk VHD id associated with VM.
  /// [vmName] The VM Name.
  HyperVReplicaAzureEnableProtectionInput({
    this.diskEncryptionSetId,
    this.diskType,
    this.disksToInclude,
    this.disksToIncludeForManagedDisks,
    this.enableRdpOnTargetOption,
    this.hvHostVmId,
    required this.instanceType,
    this.licenseType,
    this.linuxLicenseType,
    this.logStorageAccountId,
    this.osType,
    this.seedManagedDiskTags,
    this.sqlServerLicenseType,
    this.targetAvailabilitySetId,
    this.targetAvailabilityZone,
    this.targetAzureNetworkId,
    this.targetAzureSubnetId,
    this.targetAzureV1ResourceGroupId,
    this.targetAzureV2ResourceGroupId,
    this.targetAzureVmName,
    this.targetManagedDiskTags,
    this.targetNicTags,
    this.targetProximityPlacementGroupId,
    this.targetStorageAccountId,
    this.targetVmSecurityProfile,
    this.targetVmSize,
    this.targetVmTags,
    this.useManagedDisks,
    this.useManagedDisksForReplication,
    this.userSelectedOSName,
    this.vhdId,
    this.vmName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionSetId': ?diskEncryptionSetId,
      'diskType': ?diskType,
      'disksToInclude': ?disksToInclude,
      'disksToIncludeForManagedDisks': ?pulumi.Input.mapOptionalInputValue<List<HyperVReplicaAzureDiskInputDetails>, List<Map<String, dynamic>>>(disksToIncludeForManagedDisks, (value) => pulumi.Input.encodeList<HyperVReplicaAzureDiskInputDetails, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableRdpOnTargetOption': ?enableRdpOnTargetOption,
      'hvHostVmId': ?hvHostVmId,
      'instanceType': instanceType,
      'licenseType': ?licenseType,
      'linuxLicenseType': ?linuxLicenseType,
      'logStorageAccountId': ?logStorageAccountId,
      'osType': ?osType,
      'seedManagedDiskTags': ?seedManagedDiskTags,
      'sqlServerLicenseType': ?sqlServerLicenseType,
      'targetAvailabilitySetId': ?targetAvailabilitySetId,
      'targetAvailabilityZone': ?targetAvailabilityZone,
      'targetAzureNetworkId': ?targetAzureNetworkId,
      'targetAzureSubnetId': ?targetAzureSubnetId,
      'targetAzureV1ResourceGroupId': ?targetAzureV1ResourceGroupId,
      'targetAzureV2ResourceGroupId': ?targetAzureV2ResourceGroupId,
      'targetAzureVmName': ?targetAzureVmName,
      'targetManagedDiskTags': ?targetManagedDiskTags,
      'targetNicTags': ?targetNicTags,
      'targetProximityPlacementGroupId': ?targetProximityPlacementGroupId,
      'targetStorageAccountId': ?targetStorageAccountId,
      'targetVmSecurityProfile': ?pulumi.Input.mapOptionalInputValue<SecurityProfileProperties, Map<String, dynamic>>(targetVmSecurityProfile, (value) => value.toMap()),
      'targetVmSize': ?targetVmSize,
      'targetVmTags': ?targetVmTags,
      'useManagedDisks': ?useManagedDisks,
      'useManagedDisksForReplication': ?useManagedDisksForReplication,
      'userSelectedOSName': ?userSelectedOSName,
      'vhdId': ?vhdId,
      'vmName': ?vmName,
    };
  }

  factory HyperVReplicaAzureEnableProtectionInput.fromMap(Map<String, dynamic> map) {
    return HyperVReplicaAzureEnableProtectionInput(
      diskEncryptionSetId: map['diskEncryptionSetId'] == null ? null : (map['diskEncryptionSetId']! as String).input(),
      diskType: map['diskType'] == null ? null : (map['diskType']! as String).input(),
      disksToInclude: map['disksToInclude'] == null ? null : ((map['disksToInclude']! as List).cast<String>()).input(),
      disksToIncludeForManagedDisks: map['disksToIncludeForManagedDisks'] == null ? null : (pulumi.Input.decodeList<HyperVReplicaAzureDiskInputDetails>(map['disksToIncludeForManagedDisks']!, (value) => HyperVReplicaAzureDiskInputDetails.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enableRdpOnTargetOption: map['enableRdpOnTargetOption'] == null ? null : (map['enableRdpOnTargetOption']! as String).input(),
      hvHostVmId: map['hvHostVmId'] == null ? null : (map['hvHostVmId']! as String).input(),
      instanceType: (map['instanceType'] as String).input(),
      licenseType: map['licenseType'] == null ? null : (map['licenseType']! as String).input(),
      linuxLicenseType: map['linuxLicenseType'] == null ? null : (map['linuxLicenseType']! as String).input(),
      logStorageAccountId: map['logStorageAccountId'] == null ? null : (map['logStorageAccountId']! as String).input(),
      osType: map['osType'] == null ? null : (map['osType']! as String).input(),
      seedManagedDiskTags: map['seedManagedDiskTags'] == null ? null : ((map['seedManagedDiskTags']! as Map).cast<String, String>()).input(),
      sqlServerLicenseType: map['sqlServerLicenseType'] == null ? null : (map['sqlServerLicenseType']! as String).input(),
      targetAvailabilitySetId: map['targetAvailabilitySetId'] == null ? null : (map['targetAvailabilitySetId']! as String).input(),
      targetAvailabilityZone: map['targetAvailabilityZone'] == null ? null : (map['targetAvailabilityZone']! as String).input(),
      targetAzureNetworkId: map['targetAzureNetworkId'] == null ? null : (map['targetAzureNetworkId']! as String).input(),
      targetAzureSubnetId: map['targetAzureSubnetId'] == null ? null : (map['targetAzureSubnetId']! as String).input(),
      targetAzureV1ResourceGroupId: map['targetAzureV1ResourceGroupId'] == null ? null : (map['targetAzureV1ResourceGroupId']! as String).input(),
      targetAzureV2ResourceGroupId: map['targetAzureV2ResourceGroupId'] == null ? null : (map['targetAzureV2ResourceGroupId']! as String).input(),
      targetAzureVmName: map['targetAzureVmName'] == null ? null : (map['targetAzureVmName']! as String).input(),
      targetManagedDiskTags: map['targetManagedDiskTags'] == null ? null : ((map['targetManagedDiskTags']! as Map).cast<String, String>()).input(),
      targetNicTags: map['targetNicTags'] == null ? null : ((map['targetNicTags']! as Map).cast<String, String>()).input(),
      targetProximityPlacementGroupId: map['targetProximityPlacementGroupId'] == null ? null : (map['targetProximityPlacementGroupId']! as String).input(),
      targetStorageAccountId: map['targetStorageAccountId'] == null ? null : (map['targetStorageAccountId']! as String).input(),
      targetVmSecurityProfile: map['targetVmSecurityProfile'] == null ? null : (SecurityProfileProperties.fromMap((map['targetVmSecurityProfile']! as Map).cast<String, dynamic>())).input(),
      targetVmSize: map['targetVmSize'] == null ? null : (map['targetVmSize']! as String).input(),
      targetVmTags: map['targetVmTags'] == null ? null : ((map['targetVmTags']! as Map).cast<String, String>()).input(),
      useManagedDisks: map['useManagedDisks'] == null ? null : (map['useManagedDisks']! as String).input(),
      useManagedDisksForReplication: map['useManagedDisksForReplication'] == null ? null : (map['useManagedDisksForReplication']! as String).input(),
      userSelectedOSName: map['userSelectedOSName'] == null ? null : (map['userSelectedOSName']! as String).input(),
      vhdId: map['vhdId'] == null ? null : (map['vhdId']! as String).input(),
      vmName: map['vmName'] == null ? null : (map['vmName']! as String).input(),
    );
  }
}

