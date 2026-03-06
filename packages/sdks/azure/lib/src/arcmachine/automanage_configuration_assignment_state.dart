// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AutomanageConfigurationAssignment resources.
class AutomanageConfigurationAssignmentState {
  /// The ARM resource ID of the Arc Machine to assign the Automanage Configuration to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? arcMachineId;
  /// The ARM resource ID of the Automanage Configuration to assign to the Virtual Machine. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** For a successful creation of this resource, locate "Automanage API Access" app within your Entra ID tenant. Make sure it's granted access to the scope that includes the arc server.
  final pulumi.Input<String>? configurationId;

  /// Creates a new [AutomanageConfigurationAssignmentState].
  /// [arcMachineId] The ARM resource ID of the Arc Machine to assign the Automanage Configuration to. Changing this forces a new resource to be created.
  /// [configurationId] The ARM resource ID of the Automanage Configuration to assign to the Virtual Machine. Changing this forces a new resource to be created.
  const AutomanageConfigurationAssignmentState({
    this.arcMachineId,
    this.configurationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arcMachineId': ?arcMachineId,
      'configurationId': ?configurationId,
    };
  }

  factory AutomanageConfigurationAssignmentState.fromMap(Map<String, dynamic> map) {
    return AutomanageConfigurationAssignmentState(
      arcMachineId: (() { final guardedValue = map['arcMachineId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configurationId: (() { final guardedValue = map['configurationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

