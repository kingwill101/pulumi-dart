// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_configuration_assignment_configuration.dart';

/// {@template pulumi_policy_virtual_machine_configuration_assignment_virtual_machine_configuration_assignment_args_doc}
/// The set of arguments for VirtualMachineConfigurationAssignment.
/// {@endtemplate}
/// {@macro pulumi_policy_virtual_machine_configuration_assignment_virtual_machine_configuration_assignment_args_doc}
class VirtualMachineConfigurationAssignmentArgs {
  /// A `configuration` block as defined below.
  final pulumi.Input<VirtualMachineConfigurationAssignmentConfiguration> configuration;
  /// The Azure location where the Policy Virtual Machine Configuration Assignment should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the Guest Configuration that will be assigned in this Guest Configuration Assignment. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The resource ID of the Policy Virtual Machine which this Guest Configuration Assignment should apply to. Changing this forces a new resource to be created.
  final pulumi.Input<String> virtualMachineId;

  /// Creates a new [VirtualMachineConfigurationAssignmentArgs].
  /// [configuration] A `configuration` block as defined below.
  /// [location] The Azure location where the Policy Virtual Machine Configuration Assignment should exist. Changing this forces a new resource to be created.
  /// [name] The name of the Guest Configuration that will be assigned in this Guest Configuration Assignment. Changing this forces a new resource to be created.
  /// [virtualMachineId] The resource ID of the Policy Virtual Machine which this Guest Configuration Assignment should apply to. Changing this forces a new resource to be created.
  VirtualMachineConfigurationAssignmentArgs({
    required pulumi.Output<VirtualMachineConfigurationAssignmentConfiguration> configuration,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> virtualMachineId,
  }) :
      configuration = pulumi.Input.asInput<VirtualMachineConfigurationAssignmentConfiguration>(configuration),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      virtualMachineId = pulumi.Input.asInput<String>(virtualMachineId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': pulumi.Input.mapInputValue<VirtualMachineConfigurationAssignmentConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'virtualMachineId': virtualMachineId,
    };
  }

  factory VirtualMachineConfigurationAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return VirtualMachineConfigurationAssignmentArgs(
      configuration: pulumi.Output.create<VirtualMachineConfigurationAssignmentConfiguration>(VirtualMachineConfigurationAssignmentConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      virtualMachineId: pulumi.Output.create<String>(map['virtualMachineId'] as String),
    );
  }
}

