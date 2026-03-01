// ignore_for_file: unused_element, unnecessary_cast

import 'error_response_response.dart';

/// Generic object modeling results of script execution.
class ScriptStatusResponse {
  /// ACI resource Id.
  final String containerInstanceId;
  /// End time of the script execution.
  final String endTime;
  /// Error that is relayed from the script execution.
  final ErrorResponseResponse? error;
  /// Time the deployment script resource will expire.
  final String expirationTime;
  /// Start time of the script execution.
  final String startTime;
  /// Storage account resource Id.
  final String storageAccountId;

  /// Creates a new [ScriptStatusResponse].
  /// [containerInstanceId] ACI resource Id.
  /// [endTime] End time of the script execution.
  /// [error] Error that is relayed from the script execution.
  /// [expirationTime] Time the deployment script resource will expire.
  /// [startTime] Start time of the script execution.
  /// [storageAccountId] Storage account resource Id.
  ScriptStatusResponse({
    required this.containerInstanceId,
    required this.endTime,
    this.error,
    required this.expirationTime,
    required this.startTime,
    required this.storageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerInstanceId': containerInstanceId,
      'endTime': endTime,
      'error': ?error == null ? null : error!.toMap(),
      'expirationTime': expirationTime,
      'startTime': startTime,
      'storageAccountId': storageAccountId,
    };
  }

  factory ScriptStatusResponse.fromMap(Map<String, dynamic> map) {
    return ScriptStatusResponse(
      containerInstanceId: map['containerInstanceId'] as String,
      endTime: map['endTime'] as String,
      error: map['error'] == null ? null : ErrorResponseResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      expirationTime: map['expirationTime'] as String,
      startTime: map['startTime'] as String,
      storageAccountId: map['storageAccountId'] as String,
    );
  }
}

