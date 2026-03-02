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
  A2AProtectionContainerMappingDetailsResponse({
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
      agentAutoUpdateStatus: map['agentAutoUpdateStatus'] == null ? null : (map['agentAutoUpdateStatus'] as String).input(),
      automationAccountArmId: map['automationAccountArmId'] == null ? null : (map['automationAccountArmId'] as String).input(),
      automationAccountAuthenticationType: map['automationAccountAuthenticationType'] == null ? null : (map['automationAccountAuthenticationType'] as String).input(),
      instanceType: (map['instanceType'] as String).input(),
      jobScheduleName: map['jobScheduleName'] == null ? null : (map['jobScheduleName'] as String).input(),
      scheduleName: map['scheduleName'] == null ? null : (map['scheduleName'] as String).input(),
    );
  }
}

