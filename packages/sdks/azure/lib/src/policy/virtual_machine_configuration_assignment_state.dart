// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_configuration_assignment_configuration.dart';

/// Input properties used for looking up and filtering VirtualMachineConfigurationAssignment resources.
class VirtualMachineConfigurationAssignmentState {
  /// A `configuration` block as defined below.
  final pulumi.Input<VirtualMachineConfigurationAssignmentConfiguration>? configuration;
  /// The Azure location where the Policy Virtual Machine Configuration Assignment should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the Guest Configuration that will be assigned in this Guest Configuration Assignment. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The resource ID of the Policy Virtual Machine which this Guest Configuration Assignment should apply to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? virtualMachineId;

  /// Creates a new [VirtualMachineConfigurationAssignmentState].
  /// [configuration] A `configuration` block as defined below.
  /// [location] The Azure location where the Policy Virtual Machine Configuration Assignment should exist. Changing this forces a new resource to be created.
  /// [name] The name of the Guest Configuration that will be assigned in this Guest Configuration Assignment. Changing this forces a new resource to be created.
  /// [virtualMachineId] The resource ID of the Policy Virtual Machine which this Guest Configuration Assignment should apply to. Changing this forces a new resource to be created.
  VirtualMachineConfigurationAssignmentState({
    this.configuration,
    this.location,
    this.name,
    this.virtualMachineId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?pulumi.Input.mapOptionalInputValue<VirtualMachineConfigurationAssignmentConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'virtualMachineId': ?virtualMachineId,
    };
  }

  factory VirtualMachineConfigurationAssignmentState.fromMap(Map<String, dynamic> map) {
    return VirtualMachineConfigurationAssignmentState(
      configuration: map['configuration'] == null ? null : (VirtualMachineConfigurationAssignmentConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      virtualMachineId: map['virtualMachineId'] == null ? null : (map['virtualMachineId'] as String).input(),
    );
  }
}

