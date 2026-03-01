// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_arcmachine_automanage_configuration_assignment_automanage_configuration_assignment_args_doc}
/// The set of arguments for AutomanageConfigurationAssignment.
/// {@endtemplate}
/// {@macro pulumi_arcmachine_automanage_configuration_assignment_automanage_configuration_assignment_args_doc}
class AutomanageConfigurationAssignmentArgs {
  /// The ARM resource ID of the Arc Machine to assign the Automanage Configuration to. Changing this forces a new resource to be created.
  final pulumi.Input<String> arcMachineId;
  /// The ARM resource ID of the Automanage Configuration to assign to the Virtual Machine. Changing this forces a new resource to be created.
  ///
  /// > **Note:** For a successful creation of this resource, locate "Automanage API Access" app within your Entra ID tenant. Make sure it's granted access to the scope that includes the arc server.
  final pulumi.Input<String> configurationId;

  /// Creates a new [AutomanageConfigurationAssignmentArgs].
  /// [arcMachineId] The ARM resource ID of the Arc Machine to assign the Automanage Configuration to. Changing this forces a new resource to be created.
  /// [configurationId] The ARM resource ID of the Automanage Configuration to assign to the Virtual Machine. Changing this forces a new resource to be created.
  AutomanageConfigurationAssignmentArgs({
    required pulumi.Output<String> arcMachineId,
    required pulumi.Output<String> configurationId,
  }) :
      arcMachineId = pulumi.Input.asInput<String>(arcMachineId),
      configurationId = pulumi.Input.asInput<String>(configurationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arcMachineId': arcMachineId,
      'configurationId': configurationId,
    };
  }

  factory AutomanageConfigurationAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return AutomanageConfigurationAssignmentArgs(
      arcMachineId: pulumi.Output.create<String>(map['arcMachineId'] as String),
      configurationId: pulumi.Output.create<String>(map['configurationId'] as String),
    );
  }
}

