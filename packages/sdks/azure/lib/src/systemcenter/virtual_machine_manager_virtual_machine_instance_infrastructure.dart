// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualMachineManagerVirtualMachineInstanceInfrastructure {
  /// The type of checkpoint supported for the Virtual Machine. Possible values are `Disabled`, `Production`, `ProductionOnly` and `Standard`.
  final pulumi.Input<String>? checkpointType;
  /// The ID of the System Center Virtual Machine Manager Cloud resource to use for deploying the Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<String>? systemCenterVirtualMachineManagerCloudId;
  /// The ID of the System Center Virtual Machine Manager Inventory Item for System Center Virtual Machine Manager Virtual Machine Instance. Changing this forces a new resource to be created.
  final pulumi.Input<String>? systemCenterVirtualMachineManagerInventoryItemId;
  /// The ID of the System Center Virtual Machine Manager Virtual Machine Template to use for deploying the Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<String>? systemCenterVirtualMachineManagerTemplateId;
  /// The ID of the System Center Virtual Machine Manager Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<String>? systemCenterVirtualMachineManagerVirtualMachineServerId;

  /// Creates a new [VirtualMachineManagerVirtualMachineInstanceInfrastructure].
  /// [checkpointType] The type of checkpoint supported for the Virtual Machine. Possible values are `Disabled`, `Production`, `ProductionOnly` and `Standard`.
  /// [systemCenterVirtualMachineManagerCloudId] The ID of the System Center Virtual Machine Manager Cloud resource to use for deploying the Virtual Machine. Changing this forces a new resource to be created.
  /// [systemCenterVirtualMachineManagerInventoryItemId] The ID of the System Center Virtual Machine Manager Inventory Item for System Center Virtual Machine Manager Virtual Machine Instance. Changing this forces a new resource to be created.
  /// [systemCenterVirtualMachineManagerTemplateId] The ID of the System Center Virtual Machine Manager Virtual Machine Template to use for deploying the Virtual Machine. Changing this forces a new resource to be created.
  /// [systemCenterVirtualMachineManagerVirtualMachineServerId] The ID of the System Center Virtual Machine Manager Virtual Machine. Changing this forces a new resource to be created.
  const VirtualMachineManagerVirtualMachineInstanceInfrastructure({
    this.checkpointType,
    this.systemCenterVirtualMachineManagerCloudId,
    this.systemCenterVirtualMachineManagerInventoryItemId,
    this.systemCenterVirtualMachineManagerTemplateId,
    this.systemCenterVirtualMachineManagerVirtualMachineServerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkpointType': ?checkpointType,
      'systemCenterVirtualMachineManagerCloudId': ?systemCenterVirtualMachineManagerCloudId,
      'systemCenterVirtualMachineManagerInventoryItemId': ?systemCenterVirtualMachineManagerInventoryItemId,
      'systemCenterVirtualMachineManagerTemplateId': ?systemCenterVirtualMachineManagerTemplateId,
      'systemCenterVirtualMachineManagerVirtualMachineServerId': ?systemCenterVirtualMachineManagerVirtualMachineServerId,
    };
  }

  factory VirtualMachineManagerVirtualMachineInstanceInfrastructure.fromMap(Map<String, dynamic> map) {
    return VirtualMachineManagerVirtualMachineInstanceInfrastructure(
      checkpointType: (() { final guardedValue = map['checkpointType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemCenterVirtualMachineManagerCloudId: (() { final guardedValue = map['systemCenterVirtualMachineManagerCloudId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemCenterVirtualMachineManagerInventoryItemId: (() { final guardedValue = map['systemCenterVirtualMachineManagerInventoryItemId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemCenterVirtualMachineManagerTemplateId: (() { final guardedValue = map['systemCenterVirtualMachineManagerTemplateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemCenterVirtualMachineManagerVirtualMachineServerId: (() { final guardedValue = map['systemCenterVirtualMachineManagerVirtualMachineServerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

