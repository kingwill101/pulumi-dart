// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'a2_avm_disk_input_details.dart';
import 'a2_avm_managed_disk_input_details.dart';
import 'disk_encryption_info.dart';
import 'extended_location.dart';

/// A2A enable protection input.
class A2AEnableProtectionInput {
  /// A value indicating whether the auto protection is enabled.
  final pulumi.Input<String>? autoProtectionOfDataDisk;
  /// The recovery disk encryption information (for two pass flows).
  final pulumi.Input<DiskEncryptionInfo>? diskEncryptionInfo;
  /// The fabric specific object Id of the virtual machine.
  final pulumi.Input<String> fabricObjectId;
  /// The class type.
  /// Expected value is 'A2A'.
  final pulumi.Input<String> instanceType;
  /// The multi vm group id.
  final pulumi.Input<String>? multiVmGroupId;
  /// The multi vm group name.
  final pulumi.Input<String>? multiVmGroupName;
  /// The replication protection cluster Id.
  final pulumi.Input<String>? protectionClusterId;
  /// The recovery availability set Id.
  final pulumi.Input<String>? recoveryAvailabilitySetId;
  /// The recovery availability zone.
  final pulumi.Input<String>? recoveryAvailabilityZone;
  /// The recovery Azure virtual network ARM id.
  final pulumi.Input<String>? recoveryAzureNetworkId;
  /// The boot diagnostic storage account.
  final pulumi.Input<String>? recoveryBootDiagStorageAccountId;
  /// The recovery capacity reservation group Id.
  final pulumi.Input<String>? recoveryCapacityReservationGroupId;
  /// The recovery cloud service Id. Valid for V1 scenarios.
  final pulumi.Input<String>? recoveryCloudServiceId;
  /// The recovery container Id.
  final pulumi.Input<String>? recoveryContainerId;
  /// The recovery extended location.
  final pulumi.Input<ExtendedLocation>? recoveryExtendedLocation;
  /// The recovery proximity placement group Id.
  final pulumi.Input<String>? recoveryProximityPlacementGroupId;
  /// The recovery resource group Id. Valid for V2 scenarios.
  final pulumi.Input<String>? recoveryResourceGroupId;
  /// The recovery subnet name.
  final pulumi.Input<String>? recoverySubnetName;
  /// The virtual machine scale set Id.
  final pulumi.Input<String>? recoveryVirtualMachineScaleSetId;
  /// The list of vm disk details.
  final pulumi.Input<List<A2AVmDiskInputDetails>>? vmDisks;
  /// The list of vm managed disk details.
  final pulumi.Input<List<A2AVmManagedDiskInputDetails>>? vmManagedDisks;

  /// Creates a new [A2AEnableProtectionInput].
  /// [autoProtectionOfDataDisk] A value indicating whether the auto protection is enabled.
  /// [diskEncryptionInfo] The recovery disk encryption information (for two pass flows).
  /// [fabricObjectId] The fabric specific object Id of the virtual machine.
  /// [instanceType] The class type.
  /// [multiVmGroupId] The multi vm group id.
  /// [multiVmGroupName] The multi vm group name.
  /// [protectionClusterId] The replication protection cluster Id.
  /// [recoveryAvailabilitySetId] The recovery availability set Id.
  /// [recoveryAvailabilityZone] The recovery availability zone.
  /// [recoveryAzureNetworkId] The recovery Azure virtual network ARM id.
  /// [recoveryBootDiagStorageAccountId] The boot diagnostic storage account.
  /// [recoveryCapacityReservationGroupId] The recovery capacity reservation group Id.
  /// [recoveryCloudServiceId] The recovery cloud service Id. Valid for V1 scenarios.
  /// [recoveryContainerId] The recovery container Id.
  /// [recoveryExtendedLocation] The recovery extended location.
  /// [recoveryProximityPlacementGroupId] The recovery proximity placement group Id.
  /// [recoveryResourceGroupId] The recovery resource group Id. Valid for V2 scenarios.
  /// [recoverySubnetName] The recovery subnet name.
  /// [recoveryVirtualMachineScaleSetId] The virtual machine scale set Id.
  /// [vmDisks] The list of vm disk details.
  /// [vmManagedDisks] The list of vm managed disk details.
  A2AEnableProtectionInput({
    this.autoProtectionOfDataDisk,
    this.diskEncryptionInfo,
    required this.fabricObjectId,
    required this.instanceType,
    this.multiVmGroupId,
    this.multiVmGroupName,
    this.protectionClusterId,
    this.recoveryAvailabilitySetId,
    this.recoveryAvailabilityZone,
    this.recoveryAzureNetworkId,
    this.recoveryBootDiagStorageAccountId,
    this.recoveryCapacityReservationGroupId,
    this.recoveryCloudServiceId,
    this.recoveryContainerId,
    this.recoveryExtendedLocation,
    this.recoveryProximityPlacementGroupId,
    this.recoveryResourceGroupId,
    this.recoverySubnetName,
    this.recoveryVirtualMachineScaleSetId,
    this.vmDisks,
    this.vmManagedDisks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoProtectionOfDataDisk': ?autoProtectionOfDataDisk,
      'diskEncryptionInfo': ?pulumi.Input.mapOptionalInputValue<DiskEncryptionInfo, Map<String, dynamic>>(diskEncryptionInfo, (value) => value.toMap()),
      'fabricObjectId': fabricObjectId,
      'instanceType': instanceType,
      'multiVmGroupId': ?multiVmGroupId,
      'multiVmGroupName': ?multiVmGroupName,
      'protectionClusterId': ?protectionClusterId,
      'recoveryAvailabilitySetId': ?recoveryAvailabilitySetId,
      'recoveryAvailabilityZone': ?recoveryAvailabilityZone,
      'recoveryAzureNetworkId': ?recoveryAzureNetworkId,
      'recoveryBootDiagStorageAccountId': ?recoveryBootDiagStorageAccountId,
      'recoveryCapacityReservationGroupId': ?recoveryCapacityReservationGroupId,
      'recoveryCloudServiceId': ?recoveryCloudServiceId,
      'recoveryContainerId': ?recoveryContainerId,
      'recoveryExtendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(recoveryExtendedLocation, (value) => value.toMap()),
      'recoveryProximityPlacementGroupId': ?recoveryProximityPlacementGroupId,
      'recoveryResourceGroupId': ?recoveryResourceGroupId,
      'recoverySubnetName': ?recoverySubnetName,
      'recoveryVirtualMachineScaleSetId': ?recoveryVirtualMachineScaleSetId,
      'vmDisks': ?pulumi.Input.mapOptionalInputValue<List<A2AVmDiskInputDetails>, List<Map<String, dynamic>>>(vmDisks, (value) => pulumi.Input.encodeList<A2AVmDiskInputDetails, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vmManagedDisks': ?pulumi.Input.mapOptionalInputValue<List<A2AVmManagedDiskInputDetails>, List<Map<String, dynamic>>>(vmManagedDisks, (value) => pulumi.Input.encodeList<A2AVmManagedDiskInputDetails, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory A2AEnableProtectionInput.fromMap(Map<String, dynamic> map) {
    return A2AEnableProtectionInput(
      autoProtectionOfDataDisk: map['autoProtectionOfDataDisk'] == null ? null : (map['autoProtectionOfDataDisk']! as String).input(),
      diskEncryptionInfo: map['diskEncryptionInfo'] == null ? null : (DiskEncryptionInfo.fromMap((map['diskEncryptionInfo']! as Map).cast<String, dynamic>())).input(),
      fabricObjectId: (map['fabricObjectId'] as String).input(),
      instanceType: (map['instanceType'] as String).input(),
      multiVmGroupId: map['multiVmGroupId'] == null ? null : (map['multiVmGroupId']! as String).input(),
      multiVmGroupName: map['multiVmGroupName'] == null ? null : (map['multiVmGroupName']! as String).input(),
      protectionClusterId: map['protectionClusterId'] == null ? null : (map['protectionClusterId']! as String).input(),
      recoveryAvailabilitySetId: map['recoveryAvailabilitySetId'] == null ? null : (map['recoveryAvailabilitySetId']! as String).input(),
      recoveryAvailabilityZone: map['recoveryAvailabilityZone'] == null ? null : (map['recoveryAvailabilityZone']! as String).input(),
      recoveryAzureNetworkId: map['recoveryAzureNetworkId'] == null ? null : (map['recoveryAzureNetworkId']! as String).input(),
      recoveryBootDiagStorageAccountId: map['recoveryBootDiagStorageAccountId'] == null ? null : (map['recoveryBootDiagStorageAccountId']! as String).input(),
      recoveryCapacityReservationGroupId: map['recoveryCapacityReservationGroupId'] == null ? null : (map['recoveryCapacityReservationGroupId']! as String).input(),
      recoveryCloudServiceId: map['recoveryCloudServiceId'] == null ? null : (map['recoveryCloudServiceId']! as String).input(),
      recoveryContainerId: map['recoveryContainerId'] == null ? null : (map['recoveryContainerId']! as String).input(),
      recoveryExtendedLocation: map['recoveryExtendedLocation'] == null ? null : (ExtendedLocation.fromMap((map['recoveryExtendedLocation']! as Map).cast<String, dynamic>())).input(),
      recoveryProximityPlacementGroupId: map['recoveryProximityPlacementGroupId'] == null ? null : (map['recoveryProximityPlacementGroupId']! as String).input(),
      recoveryResourceGroupId: map['recoveryResourceGroupId'] == null ? null : (map['recoveryResourceGroupId']! as String).input(),
      recoverySubnetName: map['recoverySubnetName'] == null ? null : (map['recoverySubnetName']! as String).input(),
      recoveryVirtualMachineScaleSetId: map['recoveryVirtualMachineScaleSetId'] == null ? null : (map['recoveryVirtualMachineScaleSetId']! as String).input(),
      vmDisks: map['vmDisks'] == null ? null : (pulumi.Input.decodeList<A2AVmDiskInputDetails>(map['vmDisks']!, (value) => A2AVmDiskInputDetails.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vmManagedDisks: map['vmManagedDisks'] == null ? null : (pulumi.Input.decodeList<A2AVmManagedDiskInputDetails>(map['vmManagedDisks']!, (value) => A2AVmManagedDiskInputDetails.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

