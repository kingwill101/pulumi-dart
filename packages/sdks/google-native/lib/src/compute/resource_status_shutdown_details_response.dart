// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration_response.dart';

/// Specifies if the instance is in `SHUTTING_DOWN` state or there is a instance stopping scheduled.
class ResourceStatusShutdownDetailsResponse {
  /// Duration for graceful shutdown. Only applicable when `stop_state=SHUTTING_DOWN`.
  final pulumi.Input<DurationResponse> maxDuration;

  /// Past timestamp indicating the beginning of current `stopState` in RFC3339 text format.
  final pulumi.Input<String> requestTimestamp;

  /// Current stopping state of the instance.
  final pulumi.Input<String> stopState;

  /// Target instance state.
  final pulumi.Input<String> targetState;

  /// Creates a new [ResourceStatusShutdownDetailsResponse].
  /// [maxDuration] Duration for graceful shutdown. Only applicable when `stop_state=SHUTTING_DOWN`.
  /// [requestTimestamp] Past timestamp indicating the beginning of current `stopState` in RFC3339 text format.
  /// [stopState] Current stopping state of the instance.
  /// [targetState] Target instance state.
  ResourceStatusShutdownDetailsResponse({
    required this.maxDuration,
    required this.requestTimestamp,
    required this.stopState,
    required this.targetState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxDuration':
          pulumi.Input.mapInputValue<DurationResponse, Map<String, dynamic>>(
            maxDuration,
            (value) => value.toMap(),
          ),
      'requestTimestamp': requestTimestamp,
      'stopState': stopState,
      'targetState': targetState,
    };
  }

  factory ResourceStatusShutdownDetailsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourceStatusShutdownDetailsResponse(
      maxDuration: pulumi.Input.fromValue(
        DurationResponse.fromMap(
          (map['maxDuration']! as Map).cast<String, dynamic>(),
        ),
      ),
      requestTimestamp: pulumi.Input.fromValue(
        map['requestTimestamp'] as String,
      ),
      stopState: pulumi.Input.fromValue(map['stopState'] as String),
      targetState: pulumi.Input.fromValue(map['targetState'] as String),
    );
  }
}
