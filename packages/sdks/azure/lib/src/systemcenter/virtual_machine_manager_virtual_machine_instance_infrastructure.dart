// ignore_for_file: unused_element, unnecessary_cast


class VirtualMachineManagerVirtualMachineInstanceInfrastructure {
  /// The type of checkpoint supported for the Virtual Machine. Possible values are `Disabled`, `Production`, `ProductionOnly` and `Standard`.
  final String? checkpointType;
  /// The ID of the System Center Virtual Machine Manager Cloud resource to use for deploying the Virtual Machine. Changing this forces a new resource to be created.
  final String? systemCenterVirtualMachineManagerCloudId;
  /// The ID of the System Center Virtual Machine Manager Inventory Item for System Center Virtual Machine Manager Virtual Machine Instance. Changing this forces a new resource to be created.
  final String? systemCenterVirtualMachineManagerInventoryItemId;
  /// The ID of the System Center Virtual Machine Manager Virtual Machine Template to use for deploying the Virtual Machine. Changing this forces a new resource to be created.
  final String? systemCenterVirtualMachineManagerTemplateId;
  /// The ID of the System Center Virtual Machine Manager Virtual Machine. Changing this forces a new resource to be created.
  final String? systemCenterVirtualMachineManagerVirtualMachineServerId;

  /// Creates a new [VirtualMachineManagerVirtualMachineInstanceInfrastructure].
  /// [checkpointType] The type of checkpoint supported for the Virtual Machine. Possible values are `Disabled`, `Production`, `ProductionOnly` and `Standard`.
  /// [systemCenterVirtualMachineManagerCloudId] The ID of the System Center Virtual Machine Manager Cloud resource to use for deploying the Virtual Machine. Changing this forces a new resource to be created.
  /// [systemCenterVirtualMachineManagerInventoryItemId] The ID of the System Center Virtual Machine Manager Inventory Item for System Center Virtual Machine Manager Virtual Machine Instance. Changing this forces a new resource to be created.
  /// [systemCenterVirtualMachineManagerTemplateId] The ID of the System Center Virtual Machine Manager Virtual Machine Template to use for deploying the Virtual Machine. Changing this forces a new resource to be created.
  /// [systemCenterVirtualMachineManagerVirtualMachineServerId] The ID of the System Center Virtual Machine Manager Virtual Machine. Changing this forces a new resource to be created.
  VirtualMachineManagerVirtualMachineInstanceInfrastructure({
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
      checkpointType: map['checkpointType'] == null ? null : map['checkpointType'] as String,
      systemCenterVirtualMachineManagerCloudId: map['systemCenterVirtualMachineManagerCloudId'] == null ? null : map['systemCenterVirtualMachineManagerCloudId'] as String,
      systemCenterVirtualMachineManagerInventoryItemId: map['systemCenterVirtualMachineManagerInventoryItemId'] == null ? null : map['systemCenterVirtualMachineManagerInventoryItemId'] as String,
      systemCenterVirtualMachineManagerTemplateId: map['systemCenterVirtualMachineManagerTemplateId'] == null ? null : map['systemCenterVirtualMachineManagerTemplateId'] as String,
      systemCenterVirtualMachineManagerVirtualMachineServerId: map['systemCenterVirtualMachineManagerVirtualMachineServerId'] == null ? null : map['systemCenterVirtualMachineManagerVirtualMachineServerId'] as String,
    );
  }
}

