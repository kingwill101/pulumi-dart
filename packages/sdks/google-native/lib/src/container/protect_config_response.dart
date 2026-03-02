// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_config_response.dart';

/// ProtectConfig defines the flags needed to enable/disable features for the Protect API.
class ProtectConfigResponse {
  /// WorkloadConfig defines which actions are enabled for a cluster's workload configurations.
  final pulumi.Input<WorkloadConfigResponse> workloadConfig;
  /// Sets which mode to use for Protect workload vulnerability scanning feature.
  final pulumi.Input<String> workloadVulnerabilityMode;

  /// Creates a new [ProtectConfigResponse].
  /// [workloadConfig] WorkloadConfig defines which actions are enabled for a cluster's workload configurations.
  /// [workloadVulnerabilityMode] Sets which mode to use for Protect workload vulnerability scanning feature.
  ProtectConfigResponse({
    required this.workloadConfig,
    required this.workloadVulnerabilityMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'workloadConfig': pulumi.Input.mapInputValue<WorkloadConfigResponse, Map<String, dynamic>>(workloadConfig, (value) => value.toMap()),
      'workloadVulnerabilityMode': workloadVulnerabilityMode,
    };
  }

  factory ProtectConfigResponse.fromMap(Map<String, dynamic> map) {
    return ProtectConfigResponse(
      workloadConfig: (WorkloadConfigResponse.fromMap((map['workloadConfig'] as Map).cast<String, dynamic>())).input(),
      workloadVulnerabilityMode: (map['workloadVulnerabilityMode'] as String).input(),
    );
  }
}

