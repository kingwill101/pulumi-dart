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
      diskEncryptionSetId: (() { final guardedValue = map['diskEncryptionSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskType: (() { final guardedValue = map['diskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disksToInclude: (() { final guardedValue = map['disksToInclude']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      disksToIncludeForManagedDisks: (() { final guardedValue = map['disksToIncludeForManagedDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HyperVReplicaAzureDiskInputDetails>(guardedValue, (value) => HyperVReplicaAzureDiskInputDetails.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enableRdpOnTargetOption: (() { final guardedValue = map['enableRdpOnTargetOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hvHostVmId: (() { final guardedValue = map['hvHostVmId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      licenseType: (() { final guardedValue = map['licenseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linuxLicenseType: (() { final guardedValue = map['linuxLicenseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logStorageAccountId: (() { final guardedValue = map['logStorageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      seedManagedDiskTags: (() { final guardedValue = map['seedManagedDiskTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      sqlServerLicenseType: (() { final guardedValue = map['sqlServerLicenseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetAvailabilitySetId: (() { final guardedValue = map['targetAvailabilitySetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetAvailabilityZone: (() { final guardedValue = map['targetAvailabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetAzureNetworkId: (() { final guardedValue = map['targetAzureNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetAzureSubnetId: (() { final guardedValue = map['targetAzureSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetAzureV1ResourceGroupId: (() { final guardedValue = map['targetAzureV1ResourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetAzureV2ResourceGroupId: (() { final guardedValue = map['targetAzureV2ResourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetAzureVmName: (() { final guardedValue = map['targetAzureVmName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetManagedDiskTags: (() { final guardedValue = map['targetManagedDiskTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetNicTags: (() { final guardedValue = map['targetNicTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetProximityPlacementGroupId: (() { final guardedValue = map['targetProximityPlacementGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetStorageAccountId: (() { final guardedValue = map['targetStorageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetVmSecurityProfile: (() { final guardedValue = map['targetVmSecurityProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityProfileProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetVmSize: (() { final guardedValue = map['targetVmSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetVmTags: (() { final guardedValue = map['targetVmTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      useManagedDisks: (() { final guardedValue = map['useManagedDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useManagedDisksForReplication: (() { final guardedValue = map['useManagedDisksForReplication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userSelectedOSName: (() { final guardedValue = map['userSelectedOSName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vhdId: (() { final guardedValue = map['vhdId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmName: (() { final guardedValue = map['vmName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

