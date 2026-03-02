// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'in_mage_azure_v2_disk_input_details.dart';

/// VMware Azure specific enable protection input.
class InMageAzureV2EnableProtectionInput {
  /// The DiskEncryptionSet ARM Id.
  final pulumi.Input<String>? diskEncryptionSetId;
  /// The disk type.
  final pulumi.Input<String>? diskType;
  /// The disks to include list.
  final pulumi.Input<List<InMageAzureV2DiskInputDetails>>? disksToInclude;
  /// The selected option to enable RDP\SSH on target VM after failover. String value of SrsDataContract.EnableRDPOnTargetOption enum.
  final pulumi.Input<String>? enableRdpOnTargetOption;
  /// The class type.
  /// Expected value is 'InMageAzureV2'.
  final pulumi.Input<String> instanceType;
  /// License type.
  final pulumi.Input<String>? licenseType;
  /// The storage account to be used for logging during replication.
  final pulumi.Input<String>? logStorageAccountId;
  /// The Master target Id.
  final pulumi.Input<String>? masterTargetId;
  /// The multi VM group Id.
  final pulumi.Input<String>? multiVmGroupId;
  /// The multi VM group name.
  final pulumi.Input<String>? multiVmGroupName;
  /// The Process Server Id.
  final pulumi.Input<String>? processServerId;
  /// The CS account Id.
  final pulumi.Input<String>? runAsAccountId;
  /// The tags for the seed managed disks.
  final pulumi.Input<Map<String, String>>? seedManagedDiskTags;
  /// The SQL Server license type.
  final pulumi.Input<String>? sqlServerLicenseType;
  /// The storage account Id.
  final pulumi.Input<String>? storageAccountId;
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
  /// The target VM size.
  final pulumi.Input<String>? targetVmSize;
  /// The target VM tags.
  final pulumi.Input<Map<String, String>>? targetVmTags;

  /// Creates a new [InMageAzureV2EnableProtectionInput].
  /// [diskEncryptionSetId] The DiskEncryptionSet ARM Id.
  /// [diskType] The disk type.
  /// [disksToInclude] The disks to include list.
  /// [enableRdpOnTargetOption] The selected option to enable RDP\SSH on target VM after failover. String value of SrsDataContract.EnableRDPOnTargetOption enum.
  /// [instanceType] The class type.
  /// [licenseType] License type.
  /// [logStorageAccountId] The storage account to be used for logging during replication.
  /// [masterTargetId] The Master target Id.
  /// [multiVmGroupId] The multi VM group Id.
  /// [multiVmGroupName] The multi VM group name.
  /// [processServerId] The Process Server Id.
  /// [runAsAccountId] The CS account Id.
  /// [seedManagedDiskTags] The tags for the seed managed disks.
  /// [sqlServerLicenseType] The SQL Server license type.
  /// [storageAccountId] The storage account Id.
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
  /// [targetVmSize] The target VM size.
  /// [targetVmTags] The target VM tags.
  InMageAzureV2EnableProtectionInput({
    this.diskEncryptionSetId,
    this.diskType,
    this.disksToInclude,
    this.enableRdpOnTargetOption,
    required this.instanceType,
    this.licenseType,
    this.logStorageAccountId,
    this.masterTargetId,
    this.multiVmGroupId,
    this.multiVmGroupName,
    this.processServerId,
    this.runAsAccountId,
    this.seedManagedDiskTags,
    this.sqlServerLicenseType,
    this.storageAccountId,
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
    this.targetVmSize,
    this.targetVmTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionSetId': ?diskEncryptionSetId,
      'diskType': ?diskType,
      'disksToInclude': ?pulumi.Input.mapOptionalInputValue<List<InMageAzureV2DiskInputDetails>, List<Map<String, dynamic>>>(disksToInclude, (value) => pulumi.Input.encodeList<InMageAzureV2DiskInputDetails, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableRdpOnTargetOption': ?enableRdpOnTargetOption,
      'instanceType': instanceType,
      'licenseType': ?licenseType,
      'logStorageAccountId': ?logStorageAccountId,
      'masterTargetId': ?masterTargetId,
      'multiVmGroupId': ?multiVmGroupId,
      'multiVmGroupName': ?multiVmGroupName,
      'processServerId': ?processServerId,
      'runAsAccountId': ?runAsAccountId,
      'seedManagedDiskTags': ?seedManagedDiskTags,
      'sqlServerLicenseType': ?sqlServerLicenseType,
      'storageAccountId': ?storageAccountId,
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
      'targetVmSize': ?targetVmSize,
      'targetVmTags': ?targetVmTags,
    };
  }

  factory InMageAzureV2EnableProtectionInput.fromMap(Map<String, dynamic> map) {
    return InMageAzureV2EnableProtectionInput(
      diskEncryptionSetId: map['diskEncryptionSetId'] == null ? null : (map['diskEncryptionSetId'] as String).input(),
      diskType: map['diskType'] == null ? null : (map['diskType'] as String).input(),
      disksToInclude: map['disksToInclude'] == null ? null : (pulumi.Input.decodeList<InMageAzureV2DiskInputDetails>(map['disksToInclude'], (value) => InMageAzureV2DiskInputDetails.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enableRdpOnTargetOption: map['enableRdpOnTargetOption'] == null ? null : (map['enableRdpOnTargetOption'] as String).input(),
      instanceType: (map['instanceType'] as String).input(),
      licenseType: map['licenseType'] == null ? null : (map['licenseType'] as String).input(),
      logStorageAccountId: map['logStorageAccountId'] == null ? null : (map['logStorageAccountId'] as String).input(),
      masterTargetId: map['masterTargetId'] == null ? null : (map['masterTargetId'] as String).input(),
      multiVmGroupId: map['multiVmGroupId'] == null ? null : (map['multiVmGroupId'] as String).input(),
      multiVmGroupName: map['multiVmGroupName'] == null ? null : (map['multiVmGroupName'] as String).input(),
      processServerId: map['processServerId'] == null ? null : (map['processServerId'] as String).input(),
      runAsAccountId: map['runAsAccountId'] == null ? null : (map['runAsAccountId'] as String).input(),
      seedManagedDiskTags: map['seedManagedDiskTags'] == null ? null : ((map['seedManagedDiskTags'] as Map).cast<String, String>()).input(),
      sqlServerLicenseType: map['sqlServerLicenseType'] == null ? null : (map['sqlServerLicenseType'] as String).input(),
      storageAccountId: map['storageAccountId'] == null ? null : (map['storageAccountId'] as String).input(),
      targetAvailabilitySetId: map['targetAvailabilitySetId'] == null ? null : (map['targetAvailabilitySetId'] as String).input(),
      targetAvailabilityZone: map['targetAvailabilityZone'] == null ? null : (map['targetAvailabilityZone'] as String).input(),
      targetAzureNetworkId: map['targetAzureNetworkId'] == null ? null : (map['targetAzureNetworkId'] as String).input(),
      targetAzureSubnetId: map['targetAzureSubnetId'] == null ? null : (map['targetAzureSubnetId'] as String).input(),
      targetAzureV1ResourceGroupId: map['targetAzureV1ResourceGroupId'] == null ? null : (map['targetAzureV1ResourceGroupId'] as String).input(),
      targetAzureV2ResourceGroupId: map['targetAzureV2ResourceGroupId'] == null ? null : (map['targetAzureV2ResourceGroupId'] as String).input(),
      targetAzureVmName: map['targetAzureVmName'] == null ? null : (map['targetAzureVmName'] as String).input(),
      targetManagedDiskTags: map['targetManagedDiskTags'] == null ? null : ((map['targetManagedDiskTags'] as Map).cast<String, String>()).input(),
      targetNicTags: map['targetNicTags'] == null ? null : ((map['targetNicTags'] as Map).cast<String, String>()).input(),
      targetProximityPlacementGroupId: map['targetProximityPlacementGroupId'] == null ? null : (map['targetProximityPlacementGroupId'] as String).input(),
      targetVmSize: map['targetVmSize'] == null ? null : (map['targetVmSize'] as String).input(),
      targetVmTags: map['targetVmTags'] == null ? null : ((map['targetVmTags'] as Map).cast<String, String>()).input(),
    );
  }
}

