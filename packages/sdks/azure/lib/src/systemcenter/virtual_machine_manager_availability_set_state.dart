// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VirtualMachineManagerAvailabilitySet resources.
class VirtualMachineManagerAvailabilitySetState {
  /// The ID of the Custom Location for the System Center Virtual Machine Manager Availability Set. Changing this forces a new resource to be created.
  final pulumi.Input<String>? customLocationId;
  /// The Azure Region where the System Center Virtual Machine Manager Availability Set should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the System Center Virtual Machine Manager Availability Set. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the System Center Virtual Machine Availability Set should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The ID of the System Center Virtual Machine Manager Server. Changing this forces a new resource to be created.
  final pulumi.Input<String>? systemCenterVirtualMachineManagerServerId;
  /// A mapping of tags which should be assigned to the System Center Virtual Machine Manager Availability Set.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [VirtualMachineManagerAvailabilitySetState].
  /// [customLocationId] The ID of the Custom Location for the System Center Virtual Machine Manager Availability Set. Changing this forces a new resource to be created.
  /// [location] The Azure Region where the System Center Virtual Machine Manager Availability Set should exist. Changing this forces a new resource to be created.
  /// [name] The name of the System Center Virtual Machine Manager Availability Set. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the System Center Virtual Machine Availability Set should exist. Changing this forces a new resource to be created.
  /// [systemCenterVirtualMachineManagerServerId] The ID of the System Center Virtual Machine Manager Server. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the System Center Virtual Machine Manager Availability Set.
  VirtualMachineManagerAvailabilitySetState({
    this.customLocationId,
    this.location,
    this.name,
    this.resourceGroupName,
    this.systemCenterVirtualMachineManagerServerId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customLocationId': ?customLocationId,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'systemCenterVirtualMachineManagerServerId': ?systemCenterVirtualMachineManagerServerId,
      'tags': ?tags,
    };
  }

  factory VirtualMachineManagerAvailabilitySetState.fromMap(Map<String, dynamic> map) {
    return VirtualMachineManagerAvailabilitySetState(
      customLocationId: map['customLocationId'] == null ? null : (map['customLocationId']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      systemCenterVirtualMachineManagerServerId: map['systemCenterVirtualMachineManagerServerId'] == null ? null : (map['systemCenterVirtualMachineManagerServerId']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

