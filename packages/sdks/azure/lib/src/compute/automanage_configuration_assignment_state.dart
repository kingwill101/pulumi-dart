// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AutomanageConfigurationAssignment resources.
class AutomanageConfigurationAssignmentState {
  /// The ARM resource ID of the Automanage Configuration to assign to the Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<String>? configurationId;
  /// The ARM resource ID of the Virtual Machine to assign the Automanage Configuration to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? virtualMachineId;

  /// Creates a new [AutomanageConfigurationAssignmentState].
  /// [configurationId] The ARM resource ID of the Automanage Configuration to assign to the Virtual Machine. Changing this forces a new resource to be created.
  /// [virtualMachineId] The ARM resource ID of the Virtual Machine to assign the Automanage Configuration to. Changing this forces a new resource to be created.
  AutomanageConfigurationAssignmentState({
    this.configurationId,
    this.virtualMachineId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationId': ?configurationId,
      'virtualMachineId': ?virtualMachineId,
    };
  }

  factory AutomanageConfigurationAssignmentState.fromMap(Map<String, dynamic> map) {
    return AutomanageConfigurationAssignmentState(
      configurationId: map['configurationId'] == null ? null : (map['configurationId'] as String).input(),
      virtualMachineId: map['virtualMachineId'] == null ? null : (map['virtualMachineId'] as String).input(),
    );
  }
}

