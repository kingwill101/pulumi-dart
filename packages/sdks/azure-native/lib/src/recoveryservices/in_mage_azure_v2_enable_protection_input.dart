// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'in_mage_azure_v2_disk_input_details.dart';

/// VMware Azure specific enable protection input.
class InMageAzureV2EnableProtectionInput {
  /// The DiskEncryptionSet ARM Id.
  final pulumi.Input<String?>? diskEncryptionSetId;
  /// The disk type.
  final pulumi.Input<dynamic>? diskType;
  /// The disks to include list.
  final pulumi.Input<List<InMageAzureV2DiskInputDetails>?>? disksToInclude;
  /// The selected option to enable RDP\SSH on target VM after failover. String value of SrsDataContract.EnableRDPOnTargetOption enum.
  final pulumi.Input<String?>? enableRdpOnTargetOption;
  /// The class type.
  /// Expected value is 'InMageAzureV2'.
  final pulumi.Input<String> instanceType;
  /// License type.
  final pulumi.Input<dynamic>? licenseType;
  /// The storage account to be used for logging during replication.
  final pulumi.Input<String?>? logStorageAccountId;
  /// The Master target Id.
  final pulumi.Input<String?>? masterTargetId;
  /// The multi VM group Id.
  final pulumi.Input<String?>? multiVmGroupId;
  /// The multi VM group name.
  final pulumi.Input<String?>? multiVmGroupName;
  /// The Process Server Id.
  final pulumi.Input<String?>? processServerId;
  /// The CS account Id.
  final pulumi.Input<String?>? runAsAccountId;
  /// The tags for the seed managed disks.
  final pulumi.Input<Map<String, String>?>? seedManagedDiskTags;
  /// The SQL Server license type.
  final pulumi.Input<dynamic>? sqlServerLicenseType;
  /// The storage account Id.
  final pulumi.Input<String?>? storageAccountId;
  /// The target availability set ARM Id for resource manager deployment.
  final pulumi.Input<String?>? targetAvailabilitySetId;
  /// The target availability zone.
  final pulumi.Input<String?>? targetAvailabilityZone;
  /// The selected target Azure network Id.
  final pulumi.Input<String?>? targetAzureNetworkId;
  /// The selected target Azure subnet Id.
  final pulumi.Input<String?>? targetAzureSubnetId;
  /// The Id of the target resource group (for classic deployment) in which the failover VM is to be created.
  final pulumi.Input<String?>? targetAzureV1ResourceGroupId;
  /// The Id of the target resource group (for resource manager deployment) in which the failover VM is to be created.
  final pulumi.Input<String?>? targetAzureV2ResourceGroupId;
  /// The target azure VM Name.
  final pulumi.Input<String?>? targetAzureVmName;
  /// The tags for the target managed disks.
  final pulumi.Input<Map<String, String>?>? targetManagedDiskTags;
  /// The tags for the target NICs.
  final pulumi.Input<Map<String, String>?>? targetNicTags;
  /// The proximity placement group ARM Id.
  final pulumi.Input<String?>? targetProximityPlacementGroupId;
  /// The target VM size.
  final pulumi.Input<String?>? targetVmSize;
  /// The target VM tags.
  final pulumi.Input<Map<String, String>?>? targetVmTags;

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
  const InMageAzureV2EnableProtectionInput({
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
      diskEncryptionSetId: (() { final guardedValue = map['diskEncryptionSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskType: (() { final guardedValue = map['diskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      disksToInclude: (() { final guardedValue = map['disksToInclude']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InMageAzureV2DiskInputDetails>(guardedValue, (value) => InMageAzureV2DiskInputDetails.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enableRdpOnTargetOption: (() { final guardedValue = map['enableRdpOnTargetOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      licenseType: (() { final guardedValue = map['licenseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      logStorageAccountId: (() { final guardedValue = map['logStorageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterTargetId: (() { final guardedValue = map['masterTargetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multiVmGroupId: (() { final guardedValue = map['multiVmGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multiVmGroupName: (() { final guardedValue = map['multiVmGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      processServerId: (() { final guardedValue = map['processServerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runAsAccountId: (() { final guardedValue = map['runAsAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      seedManagedDiskTags: (() { final guardedValue = map['seedManagedDiskTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      sqlServerLicenseType: (() { final guardedValue = map['sqlServerLicenseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
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
      targetVmSize: (() { final guardedValue = map['targetVmSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetVmTags: (() { final guardedValue = map['targetVmTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
