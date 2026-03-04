// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_response_response.dart';

/// Generic object modeling results of script execution.
class ScriptStatusResponse {
  /// ACI resource Id.
  final pulumi.Input<String> containerInstanceId;

  /// End time of the script execution.
  final pulumi.Input<String> endTime;

  /// Error that is relayed from the script execution.
  final pulumi.Input<ErrorResponseResponse>? error;

  /// Time the deployment script resource will expire.
  final pulumi.Input<String> expirationTime;

  /// Start time of the script execution.
  final pulumi.Input<String> startTime;

  /// Storage account resource Id.
  final pulumi.Input<String> storageAccountId;

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
      'error':
          ?pulumi.Input.mapOptionalInputValue<
            ErrorResponseResponse,
            Map<String, dynamic>
          >(error, (value) => value.toMap()),
      'expirationTime': expirationTime,
      'startTime': startTime,
      'storageAccountId': storageAccountId,
    };
  }

  factory ScriptStatusResponse.fromMap(Map<String, dynamic> map) {
    return ScriptStatusResponse(
      containerInstanceId: pulumi.Input.fromValue(
        map['containerInstanceId'] as String,
      ),
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      error: (() {
        final guardedValue = map['error'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ErrorResponseResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      expirationTime: pulumi.Input.fromValue(map['expirationTime'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      storageAccountId: pulumi.Input.fromValue(
        map['storageAccountId'] as String,
      ),
    );
  }
}
