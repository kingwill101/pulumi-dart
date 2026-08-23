// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// InMageAzureV2 switch provider blocking error details.
class InMageAzureV2SwitchProviderBlockingErrorDetailsResponse {
  /// The error code.
  final pulumi.Input<String> errorCode;
  /// The error message.
  final pulumi.Input<String> errorMessage;
  /// The error message parameters.
  final pulumi.Input<Map<String, String>> errorMessageParameters;
  /// The error tags.
  final pulumi.Input<Map<String, String>> errorTags;
  /// The possible causes.
  final pulumi.Input<String> possibleCauses;
  /// The recommended action.
  final pulumi.Input<String> recommendedAction;

  /// Creates a new [InMageAzureV2SwitchProviderBlockingErrorDetailsResponse].
  /// [errorCode] The error code.
  /// [errorMessage] The error message.
  /// [errorMessageParameters] The error message parameters.
  /// [errorTags] The error tags.
  /// [possibleCauses] The possible causes.
  /// [recommendedAction] The recommended action.
  const InMageAzureV2SwitchProviderBlockingErrorDetailsResponse({
    required this.errorCode,
    required this.errorMessage,
    required this.errorMessageParameters,
    required this.errorTags,
    required this.possibleCauses,
    required this.recommendedAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCode': errorCode,
      'errorMessage': errorMessage,
      'errorMessageParameters': errorMessageParameters,
      'errorTags': errorTags,
      'possibleCauses': possibleCauses,
      'recommendedAction': recommendedAction,
    };
  }

  factory InMageAzureV2SwitchProviderBlockingErrorDetailsResponse.fromMap(Map<String, dynamic> map) {
    return InMageAzureV2SwitchProviderBlockingErrorDetailsResponse(
      errorCode: pulumi.Input.fromValue(map['errorCode'] as String),
      errorMessage: pulumi.Input.fromValue(map['errorMessage'] as String),
      errorMessageParameters: pulumi.Input.fromValue((map['errorMessageParameters'] as Map).cast<String, String>()),
      errorTags: pulumi.Input.fromValue((map['errorTags'] as Map).cast<String, String>()),
      possibleCauses: pulumi.Input.fromValue(map['possibleCauses'] as String),
      recommendedAction: pulumi.Input.fromValue(map['recommendedAction'] as String),
    );
  }
}
