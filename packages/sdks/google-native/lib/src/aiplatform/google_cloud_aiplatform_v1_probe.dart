// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_probe_exec_action.dart';

/// Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.
class GoogleCloudAiplatformV1Probe {
  /// Exec specifies the action to take.
  final pulumi.Input<GoogleCloudAiplatformV1ProbeExecAction>? exec;
  /// How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Must be less than timeout_seconds. Maps to Kubernetes probe argument 'periodSeconds'.
  final pulumi.Input<int>? periodSeconds;
  /// Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Must be greater or equal to period_seconds. Maps to Kubernetes probe argument 'timeoutSeconds'.
  final pulumi.Input<int>? timeoutSeconds;

  /// Creates a new [GoogleCloudAiplatformV1Probe].
  /// [exec] Exec specifies the action to take.
  /// [periodSeconds] How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Must be less than timeout_seconds. Maps to Kubernetes probe argument 'periodSeconds'.
  /// [timeoutSeconds] Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Must be greater or equal to period_seconds. Maps to Kubernetes probe argument 'timeoutSeconds'.
  GoogleCloudAiplatformV1Probe({
    this.exec,
    this.periodSeconds,
    this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1ProbeExecAction, Map<String, dynamic>>(exec, (value) => value.toMap()),
      'periodSeconds': ?periodSeconds,
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory GoogleCloudAiplatformV1Probe.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1Probe(
      exec: map['exec'] == null ? null : (GoogleCloudAiplatformV1ProbeExecAction.fromMap((map['exec']! as Map).cast<String, dynamic>())).input(),
      periodSeconds: map['periodSeconds'] == null ? null : (map['periodSeconds']! as int).input(),
      timeoutSeconds: map['timeoutSeconds'] == null ? null : (map['timeoutSeconds']! as int).input(),
    );
  }
}

