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
      'diskEncryptionInfo':
          ?pulumi.Input.mapOptionalInputValue<
            DiskEncryptionInfo,
            Map<String, dynamic>
          >(diskEncryptionInfo, (value) => value.toMap()),
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
      'recoveryExtendedLocation':
          ?pulumi.Input.mapOptionalInputValue<
            ExtendedLocation,
            Map<String, dynamic>
          >(recoveryExtendedLocation, (value) => value.toMap()),
      'recoveryProximityPlacementGroupId': ?recoveryProximityPlacementGroupId,
      'recoveryResourceGroupId': ?recoveryResourceGroupId,
      'recoverySubnetName': ?recoverySubnetName,
      'recoveryVirtualMachineScaleSetId': ?recoveryVirtualMachineScaleSetId,
      'vmDisks':
          ?pulumi.Input.mapOptionalInputValue<
            List<A2AVmDiskInputDetails>,
            List<Map<String, dynamic>>
          >(
            vmDisks,
            (value) =>
                pulumi.Input.encodeList<
                  A2AVmDiskInputDetails,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'vmManagedDisks':
          ?pulumi.Input.mapOptionalInputValue<
            List<A2AVmManagedDiskInputDetails>,
            List<Map<String, dynamic>>
          >(
            vmManagedDisks,
            (value) =>
                pulumi.Input.encodeList<
                  A2AVmManagedDiskInputDetails,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory A2AEnableProtectionInput.fromMap(Map<String, dynamic> map) {
    return A2AEnableProtectionInput(
      autoProtectionOfDataDisk: (() {
        final guardedValue = map['autoProtectionOfDataDisk'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      diskEncryptionInfo: (() {
        final guardedValue = map['diskEncryptionInfo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DiskEncryptionInfo.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      fabricObjectId: pulumi.Input.fromValue(map['fabricObjectId'] as String),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      multiVmGroupId: (() {
        final guardedValue = map['multiVmGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      multiVmGroupName: (() {
        final guardedValue = map['multiVmGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      protectionClusterId: (() {
        final guardedValue = map['protectionClusterId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recoveryAvailabilitySetId: (() {
        final guardedValue = map['recoveryAvailabilitySetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recoveryAvailabilityZone: (() {
        final guardedValue = map['recoveryAvailabilityZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recoveryAzureNetworkId: (() {
        final guardedValue = map['recoveryAzureNetworkId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recoveryBootDiagStorageAccountId: (() {
        final guardedValue = map['recoveryBootDiagStorageAccountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recoveryCapacityReservationGroupId: (() {
        final guardedValue = map['recoveryCapacityReservationGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recoveryCloudServiceId: (() {
        final guardedValue = map['recoveryCloudServiceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recoveryContainerId: (() {
        final guardedValue = map['recoveryContainerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recoveryExtendedLocation: (() {
        final guardedValue = map['recoveryExtendedLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ExtendedLocation.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      recoveryProximityPlacementGroupId: (() {
        final guardedValue = map['recoveryProximityPlacementGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recoveryResourceGroupId: (() {
        final guardedValue = map['recoveryResourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recoverySubnetName: (() {
        final guardedValue = map['recoverySubnetName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recoveryVirtualMachineScaleSetId: (() {
        final guardedValue = map['recoveryVirtualMachineScaleSetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vmDisks: (() {
        final guardedValue = map['vmDisks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<A2AVmDiskInputDetails>(
            guardedValue,
            (value) => A2AVmDiskInputDetails.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      vmManagedDisks: (() {
        final guardedValue = map['vmManagedDisks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<A2AVmManagedDiskInputDetails>(
            guardedValue,
            (value) => A2AVmManagedDiskInputDetails.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
