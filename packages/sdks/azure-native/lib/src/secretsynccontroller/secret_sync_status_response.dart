// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_sync_condition_response.dart';

/// SecretSyncStatus defines the observed state of the secret synchronization process.
class SecretSyncStatusResponse {
  /// Conditions represent the status of the secret create and update processes. The status can be True, False, or Unknown with various reasons and messages explaining the state. Examples of reasons include CreateSucceeded, ProviderError, InvalidClusterSecretLabelError, InvalidClusterSecretAnnotationError, UnknownError, ValidatingAdmissionPolicyCheckFailed, UserInputValidationFailed, ControllerSpcError, ControllerInternalError, NoValueChange, and ValueChangeOrForceUpdateDetected.
  final pulumi.Input<List<SecretSyncConditionResponse>> conditions;
  /// LastSuccessfulSyncTime represents the last time the secret was retrieved from the Provider and updated.
  final pulumi.Input<String> lastSuccessfulSyncTime;

  /// Creates a new [SecretSyncStatusResponse].
  /// [conditions] Conditions represent the status of the secret create and update processes. The status can be True, False, or Unknown with various reasons and messages explaining the state. Examples of reasons include CreateSucceeded, ProviderError, InvalidClusterSecretLabelError, InvalidClusterSecretAnnotationError, UnknownError, ValidatingAdmissionPolicyCheckFailed, UserInputValidationFailed, ControllerSpcError, ControllerInternalError, NoValueChange, and ValueChangeOrForceUpdateDetected.
  /// [lastSuccessfulSyncTime] LastSuccessfulSyncTime represents the last time the secret was retrieved from the Provider and updated.
  const SecretSyncStatusResponse({
    required this.conditions,
    required this.lastSuccessfulSyncTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': pulumi.Input.mapInputValue<List<SecretSyncConditionResponse>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<SecretSyncConditionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastSuccessfulSyncTime': lastSuccessfulSyncTime,
    };
  }

  factory SecretSyncStatusResponse.fromMap(Map<String, dynamic> map) {
    return SecretSyncStatusResponse(
      conditions: pulumi.Input.fromValue(pulumi.Input.decodeList<SecretSyncConditionResponse>(map['conditions']!, (value) => SecretSyncConditionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      lastSuccessfulSyncTime: pulumi.Input.fromValue(map['lastSuccessfulSyncTime'] as String),
    );
  }
}

