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
  const VirtualMachineManagerAvailabilitySetState({
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
      customLocationId: (() { final guardedValue = map['customLocationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemCenterVirtualMachineManagerServerId: (() { final guardedValue = map['systemCenterVirtualMachineManagerServerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

