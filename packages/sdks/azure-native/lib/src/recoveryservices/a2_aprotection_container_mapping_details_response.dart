// ignore_for_file: unused_element, unnecessary_cast


/// A2A provider specific settings.
class A2AProtectionContainerMappingDetailsResponse {
  /// A value indicating whether the auto update is enabled.
  final String? agentAutoUpdateStatus;
  /// The automation account arm id.
  final String? automationAccountArmId;
  /// A value indicating the type authentication to use for automation Account.
  final String? automationAccountAuthenticationType;
  /// Gets the class type. Overridden in derived classes.
  /// Expected value is 'A2A'.
  final String instanceType;
  /// The job schedule arm name.
  final String? jobScheduleName;
  /// The schedule arm name.
  final String? scheduleName;

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
      agentAutoUpdateStatus: map['agentAutoUpdateStatus'] == null ? null : map['agentAutoUpdateStatus'] as String,
      automationAccountArmId: map['automationAccountArmId'] == null ? null : map['automationAccountArmId'] as String,
      automationAccountAuthenticationType: map['automationAccountAuthenticationType'] == null ? null : map['automationAccountAuthenticationType'] as String,
      instanceType: map['instanceType'] as String,
      jobScheduleName: map['jobScheduleName'] == null ? null : map['jobScheduleName'] as String,
      scheduleName: map['scheduleName'] == null ? null : map['scheduleName'] as String,
    );
  }
}

