// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_probe_exec_action.dart';

/// Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.
class GoogleCloudAiplatformV1beta1Probe {
  /// Exec specifies the action to take.
  final GoogleCloudAiplatformV1beta1ProbeExecAction? exec;
  /// How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Must be less than timeout_seconds. Maps to Kubernetes probe argument 'periodSeconds'.
  final int? periodSeconds;
  /// Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Must be greater or equal to period_seconds. Maps to Kubernetes probe argument 'timeoutSeconds'.
  final int? timeoutSeconds;

  /// Creates a new [GoogleCloudAiplatformV1beta1Probe].
  /// [exec] Exec specifies the action to take.
  /// [periodSeconds] How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Must be less than timeout_seconds. Maps to Kubernetes probe argument 'periodSeconds'.
  /// [timeoutSeconds] Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Must be greater or equal to period_seconds. Maps to Kubernetes probe argument 'timeoutSeconds'.
  GoogleCloudAiplatformV1beta1Probe({
    this.exec,
    this.periodSeconds,
    this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exec': ?exec == null ? null : exec!.toMap(),
      'periodSeconds': ?periodSeconds,
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory GoogleCloudAiplatformV1beta1Probe.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1Probe(
      exec: map['exec'] == null ? null : GoogleCloudAiplatformV1beta1ProbeExecAction.fromMap((map['exec'] as Map).cast<String, dynamic>()),
      periodSeconds: map['periodSeconds'] == null ? null : map['periodSeconds'] as int,
      timeoutSeconds: map['timeoutSeconds'] == null ? null : map['timeoutSeconds'] as int,
    );
  }
}

