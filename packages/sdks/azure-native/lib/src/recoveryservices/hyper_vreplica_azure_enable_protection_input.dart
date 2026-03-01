// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hyper_vreplica_azure_disk_input_details.dart';
import 'security_profile_properties.dart';

/// HyperVReplicaAzure specific enable protection input.
class HyperVReplicaAzureEnableProtectionInput {
  /// The DiskEncryptionSet ARM Id.
  final String? diskEncryptionSetId;
  /// The disk type.
  final String? diskType;
  /// The list of VHD Ids of disks to be protected.
  final List<String>? disksToInclude;
  /// The disks to include list for managed disks.
  final List<HyperVReplicaAzureDiskInputDetails>? disksToIncludeForManagedDisks;
  /// The selected option to enable RDP\SSH on target vm after failover. String value of SrsDataContract.EnableRDPOnTargetOption enum.
  final String? enableRdpOnTargetOption;
  /// The Hyper-V host VM Id.
  final String? hvHostVmId;
  /// The class type.
  /// Expected value is 'HyperVReplicaAzure'.
  final String instanceType;
  /// License type.
  final String? licenseType;
  /// The license type for Linux VM's.
  final String? linuxLicenseType;
  /// The storage account to be used for logging during replication.
  final String? logStorageAccountId;
  /// The OS type associated with VM.
  final String? osType;
  /// The tags for the seed managed disks.
  final Map<String, String>? seedManagedDiskTags;
  /// The SQL Server license type.
  final String? sqlServerLicenseType;
  /// The target availability set ARM Id for resource manager deployment.
  final String? targetAvailabilitySetId;
  /// The target availability zone.
  final String? targetAvailabilityZone;
  /// The selected target Azure network Id.
  final String? targetAzureNetworkId;
  /// The selected target Azure subnet Id.
  final String? targetAzureSubnetId;
  /// The Id of the target resource group (for classic deployment) in which the failover VM is to be created.
  final String? targetAzureV1ResourceGroupId;
  /// The Id of the target resource group (for resource manager deployment) in which the failover VM is to be created.
  final String? targetAzureV2ResourceGroupId;
  /// The target azure VM Name.
  final String? targetAzureVmName;
  /// The tags for the target managed disks.
  final Map<String, String>? targetManagedDiskTags;
  /// The tags for the target NICs.
  final Map<String, String>? targetNicTags;
  /// The proximity placement group ARM Id.
  final String? targetProximityPlacementGroupId;
  /// The storage account Id.
  final String? targetStorageAccountId;
  /// The target VM security profile.
  final SecurityProfileProperties? targetVmSecurityProfile;
  /// The target VM size.
  final String? targetVmSize;
  /// The target VM tags.
  final Map<String, String>? targetVmTags;
  /// A value indicating whether managed disks should be used during failover.
  final String? useManagedDisks;
  /// A value indicating whether managed disks should be used during replication.
  final String? useManagedDisksForReplication;
  /// The OS name selected by user.
  final String? userSelectedOSName;
  /// The OS disk VHD id associated with VM.
  final String? vhdId;
  /// The VM Name.
  final String? vmName;

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
      'disksToIncludeForManagedDisks': ?disksToIncludeForManagedDisks == null ? null : pulumi.Input.encodeList<HyperVReplicaAzureDiskInputDetails, Map<String, dynamic>>(disksToIncludeForManagedDisks!, (value) => value.toMap()),
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
      'targetVmSecurityProfile': ?targetVmSecurityProfile == null ? null : targetVmSecurityProfile!.toMap(),
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
      diskEncryptionSetId: map['diskEncryptionSetId'] == null ? null : map['diskEncryptionSetId'] as String,
      diskType: map['diskType'] == null ? null : map['diskType'] as String,
      disksToInclude: map['disksToInclude'] == null ? null : (map['disksToInclude'] as List).cast<String>(),
      disksToIncludeForManagedDisks: map['disksToIncludeForManagedDisks'] == null ? null : pulumi.Input.decodeList<HyperVReplicaAzureDiskInputDetails>(map['disksToIncludeForManagedDisks'], (value) => HyperVReplicaAzureDiskInputDetails.fromMap((value as Map).cast<String, dynamic>())),
      enableRdpOnTargetOption: map['enableRdpOnTargetOption'] == null ? null : map['enableRdpOnTargetOption'] as String,
      hvHostVmId: map['hvHostVmId'] == null ? null : map['hvHostVmId'] as String,
      instanceType: map['instanceType'] as String,
      licenseType: map['licenseType'] == null ? null : map['licenseType'] as String,
      linuxLicenseType: map['linuxLicenseType'] == null ? null : map['linuxLicenseType'] as String,
      logStorageAccountId: map['logStorageAccountId'] == null ? null : map['logStorageAccountId'] as String,
      osType: map['osType'] == null ? null : map['osType'] as String,
      seedManagedDiskTags: map['seedManagedDiskTags'] == null ? null : (map['seedManagedDiskTags'] as Map).cast<String, String>(),
      sqlServerLicenseType: map['sqlServerLicenseType'] == null ? null : map['sqlServerLicenseType'] as String,
      targetAvailabilitySetId: map['targetAvailabilitySetId'] == null ? null : map['targetAvailabilitySetId'] as String,
      targetAvailabilityZone: map['targetAvailabilityZone'] == null ? null : map['targetAvailabilityZone'] as String,
      targetAzureNetworkId: map['targetAzureNetworkId'] == null ? null : map['targetAzureNetworkId'] as String,
      targetAzureSubnetId: map['targetAzureSubnetId'] == null ? null : map['targetAzureSubnetId'] as String,
      targetAzureV1ResourceGroupId: map['targetAzureV1ResourceGroupId'] == null ? null : map['targetAzureV1ResourceGroupId'] as String,
      targetAzureV2ResourceGroupId: map['targetAzureV2ResourceGroupId'] == null ? null : map['targetAzureV2ResourceGroupId'] as String,
      targetAzureVmName: map['targetAzureVmName'] == null ? null : map['targetAzureVmName'] as String,
      targetManagedDiskTags: map['targetManagedDiskTags'] == null ? null : (map['targetManagedDiskTags'] as Map).cast<String, String>(),
      targetNicTags: map['targetNicTags'] == null ? null : (map['targetNicTags'] as Map).cast<String, String>(),
      targetProximityPlacementGroupId: map['targetProximityPlacementGroupId'] == null ? null : map['targetProximityPlacementGroupId'] as String,
      targetStorageAccountId: map['targetStorageAccountId'] == null ? null : map['targetStorageAccountId'] as String,
      targetVmSecurityProfile: map['targetVmSecurityProfile'] == null ? null : SecurityProfileProperties.fromMap((map['targetVmSecurityProfile'] as Map).cast<String, dynamic>()),
      targetVmSize: map['targetVmSize'] == null ? null : map['targetVmSize'] as String,
      targetVmTags: map['targetVmTags'] == null ? null : (map['targetVmTags'] as Map).cast<String, String>(),
      useManagedDisks: map['useManagedDisks'] == null ? null : map['useManagedDisks'] as String,
      useManagedDisksForReplication: map['useManagedDisksForReplication'] == null ? null : map['useManagedDisksForReplication'] as String,
      userSelectedOSName: map['userSelectedOSName'] == null ? null : map['userSelectedOSName'] as String,
      vhdId: map['vhdId'] == null ? null : map['vhdId'] as String,
      vmName: map['vmName'] == null ? null : map['vmName'] as String,
    );
  }
}

