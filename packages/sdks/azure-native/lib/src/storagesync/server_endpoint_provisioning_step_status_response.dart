// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Server endpoint provisioning step status object.
class ServerEndpointProvisioningStepStatusResponse {
  /// Additional information for the provisioning step
  final pulumi.Input<Map<String, String>> additionalInformation;
  /// End time of the provisioning step
  final pulumi.Input<String> endTime;
  /// Error code (HResult) for the provisioning step
  final pulumi.Input<int> errorCode;
  /// Estimated completion time of the provisioning step in minutes
  final pulumi.Input<int> minutesLeft;
  /// Name of the provisioning step
  final pulumi.Input<String> name;
  /// Estimated progress percentage
  final pulumi.Input<int> progressPercentage;
  /// Start time of the provisioning step
  final pulumi.Input<String> startTime;
  /// Status of the provisioning step
  final pulumi.Input<String> status;

  /// Creates a new [ServerEndpointProvisioningStepStatusResponse].
  /// [additionalInformation] Additional information for the provisioning step
  /// [endTime] End time of the provisioning step
  /// [errorCode] Error code (HResult) for the provisioning step
  /// [minutesLeft] Estimated completion time of the provisioning step in minutes
  /// [name] Name of the provisioning step
  /// [progressPercentage] Estimated progress percentage
  /// [startTime] Start time of the provisioning step
  /// [status] Status of the provisioning step
  const ServerEndpointProvisioningStepStatusResponse({
    required this.additionalInformation,
    required this.endTime,
    required this.errorCode,
    required this.minutesLeft,
    required this.name,
    required this.progressPercentage,
    required this.startTime,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalInformation': additionalInformation,
      'endTime': endTime,
      'errorCode': errorCode,
      'minutesLeft': minutesLeft,
      'name': name,
      'progressPercentage': progressPercentage,
      'startTime': startTime,
      'status': status,
    };
  }

  factory ServerEndpointProvisioningStepStatusResponse.fromMap(Map<String, dynamic> map) {
    return ServerEndpointProvisioningStepStatusResponse(
      additionalInformation: pulumi.Input.fromValue((map['additionalInformation'] as Map).cast<String, String>()),
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      errorCode: pulumi.Input.fromValue(map['errorCode'] as int),
      minutesLeft: pulumi.Input.fromValue(map['minutesLeft'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
      progressPercentage: pulumi.Input.fromValue(map['progressPercentage'] as int),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

