// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Extended location of the resource.
class A2ASharedDiskIRErrorDetailsResponse {
  /// The error code.
  final pulumi.Input<String> errorCode;
  /// The error code enum.
  final pulumi.Input<String> errorCodeEnum;
  /// The error message.
  final pulumi.Input<String> errorMessage;
  /// The possible causes.
  final pulumi.Input<String> possibleCauses;
  /// The recommended action.
  final pulumi.Input<String> recommendedAction;

  /// Creates a new [A2ASharedDiskIRErrorDetailsResponse].
  /// [errorCode] The error code.
  /// [errorCodeEnum] The error code enum.
  /// [errorMessage] The error message.
  /// [possibleCauses] The possible causes.
  /// [recommendedAction] The recommended action.
  const A2ASharedDiskIRErrorDetailsResponse({
    required this.errorCode,
    required this.errorCodeEnum,
    required this.errorMessage,
    required this.possibleCauses,
    required this.recommendedAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCode': errorCode,
      'errorCodeEnum': errorCodeEnum,
      'errorMessage': errorMessage,
      'possibleCauses': possibleCauses,
      'recommendedAction': recommendedAction,
    };
  }

  factory A2ASharedDiskIRErrorDetailsResponse.fromMap(Map<String, dynamic> map) {
    return A2ASharedDiskIRErrorDetailsResponse(
      errorCode: pulumi.Input.fromValue(map['errorCode'] as String),
      errorCodeEnum: pulumi.Input.fromValue(map['errorCodeEnum'] as String),
      errorMessage: pulumi.Input.fromValue(map['errorMessage'] as String),
      possibleCauses: pulumi.Input.fromValue(map['possibleCauses'] as String),
      recommendedAction: pulumi.Input.fromValue(map['recommendedAction'] as String),
    );
  }
}
