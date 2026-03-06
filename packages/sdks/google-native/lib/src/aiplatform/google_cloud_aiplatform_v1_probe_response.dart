// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_probe_exec_action_response.dart';

/// Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.
class GoogleCloudAiplatformV1ProbeResponse {
  /// Exec specifies the action to take.
  final pulumi.Input<GoogleCloudAiplatformV1ProbeExecActionResponse> exec;
  /// How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Must be less than timeout_seconds. Maps to Kubernetes probe argument 'periodSeconds'.
  final pulumi.Input<int> periodSeconds;
  /// Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Must be greater or equal to period_seconds. Maps to Kubernetes probe argument 'timeoutSeconds'.
  final pulumi.Input<int> timeoutSeconds;

  /// Creates a new [GoogleCloudAiplatformV1ProbeResponse].
  /// [exec] Exec specifies the action to take.
  /// [periodSeconds] How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Must be less than timeout_seconds. Maps to Kubernetes probe argument 'periodSeconds'.
  /// [timeoutSeconds] Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Must be greater or equal to period_seconds. Maps to Kubernetes probe argument 'timeoutSeconds'.
  const GoogleCloudAiplatformV1ProbeResponse({
    required this.exec,
    required this.periodSeconds,
    required this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exec': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1ProbeExecActionResponse, Map<String, dynamic>>(exec, (value) => value.toMap()),
      'periodSeconds': periodSeconds,
      'timeoutSeconds': timeoutSeconds,
    };
  }

  factory GoogleCloudAiplatformV1ProbeResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1ProbeResponse(
      exec: pulumi.Input.fromValue(GoogleCloudAiplatformV1ProbeExecActionResponse.fromMap((map['exec']! as Map).cast<String, dynamic>())),
      periodSeconds: pulumi.Input.fromValue(map['periodSeconds'] as int),
      timeoutSeconds: pulumi.Input.fromValue(map['timeoutSeconds'] as int),
    );
  }
}

