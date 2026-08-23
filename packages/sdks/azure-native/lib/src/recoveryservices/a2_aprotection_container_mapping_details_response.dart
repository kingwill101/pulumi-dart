// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A2A provider specific settings.
class A2AProtectionContainerMappingDetailsResponse {
  /// A value indicating whether the auto update is enabled.
  final pulumi.Input<String>? agentAutoUpdateStatus;
  /// The automation account arm id.
  final pulumi.Input<String>? automationAccountArmId;
  /// A value indicating the type authentication to use for automation Account.
  final pulumi.Input<String>? automationAccountAuthenticationType;
  /// Gets the class type. Overridden in derived classes.
  /// Expected value is 'A2A'.
  final pulumi.Input<String> instanceType;
  /// The job schedule arm name.
  final pulumi.Input<String>? jobScheduleName;
  /// The schedule arm name.
  final pulumi.Input<String>? scheduleName;

  /// Creates a new [A2AProtectionContainerMappingDetailsResponse].
  /// [agentAutoUpdateStatus] A value indicating whether the auto update is enabled.
  /// [automationAccountArmId] The automation account arm id.
  /// [automationAccountAuthenticationType] A value indicating the type authentication to use for automation Account.
  /// [instanceType] Gets the class type. Overridden in derived classes.
  /// [jobScheduleName] The job schedule arm name.
  /// [scheduleName] The schedule arm name.
  const A2AProtectionContainerMappingDetailsResponse({
    this.agentAutoUpdateStatus,
    this.automationAccountArmId,
    this.automationAccountAuthenticationType,
    required this.instanceType,
    this.jobScheduleName,
    this.scheduleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentAutoUpdateStatus': ?agentAutoUpdateStatus,
      'automationAccountArmId': ?automationAccountArmId,
      'automationAccountAuthenticationType': ?automationAccountAuthenticationType,
      'instanceType': instanceType,
      'jobScheduleName': ?jobScheduleName,
      'scheduleName': ?scheduleName,
    };
  }

  factory A2AProtectionContainerMappingDetailsResponse.fromMap(Map<String, dynamic> map) {
    return A2AProtectionContainerMappingDetailsResponse(
      agentAutoUpdateStatus: (() { final guardedValue = map['agentAutoUpdateStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      automationAccountArmId: (() { final guardedValue = map['automationAccountArmId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      automationAccountAuthenticationType: (() { final guardedValue = map['automationAccountAuthenticationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      jobScheduleName: (() { final guardedValue = map['jobScheduleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduleName: (() { final guardedValue = map['scheduleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
