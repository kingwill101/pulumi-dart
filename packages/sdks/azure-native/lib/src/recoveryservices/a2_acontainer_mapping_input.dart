// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A2A container mapping input.
class A2AContainerMappingInput {
  /// A value indicating whether the auto update is enabled.
  final pulumi.Input<String>? agentAutoUpdateStatus;
  /// The automation account arm id.
  final pulumi.Input<String>? automationAccountArmId;
  /// A value indicating the type authentication to use for automation Account.
  final pulumi.Input<String>? automationAccountAuthenticationType;
  /// The class type.
  /// Expected value is 'A2A'.
  final pulumi.Input<String> instanceType;

  /// Creates a new [A2AContainerMappingInput].
  /// [agentAutoUpdateStatus] A value indicating whether the auto update is enabled.
  /// [automationAccountArmId] The automation account arm id.
  /// [automationAccountAuthenticationType] A value indicating the type authentication to use for automation Account.
  /// [instanceType] The class type.
  A2AContainerMappingInput({
    this.agentAutoUpdateStatus,
    this.automationAccountArmId,
    this.automationAccountAuthenticationType,
    required this.instanceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentAutoUpdateStatus': ?agentAutoUpdateStatus,
      'automationAccountArmId': ?automationAccountArmId,
      'automationAccountAuthenticationType': ?automationAccountAuthenticationType,
      'instanceType': instanceType,
    };
  }

  factory A2AContainerMappingInput.fromMap(Map<String, dynamic> map) {
    return A2AContainerMappingInput(
      agentAutoUpdateStatus: (() { final guardedValue = map['agentAutoUpdateStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      automationAccountArmId: (() { final guardedValue = map['automationAccountArmId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      automationAccountAuthenticationType: (() { final guardedValue = map['automationAccountAuthenticationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
    );
  }
}

