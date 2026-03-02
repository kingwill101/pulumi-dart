// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'protect_config_workload_vulnerability_mode.dart';
import 'workload_config.dart';

/// ProtectConfig defines the flags needed to enable/disable features for the Protect API.
class ProtectConfig {
  /// WorkloadConfig defines which actions are enabled for a cluster's workload configurations.
  final pulumi.Input<WorkloadConfig>? workloadConfig;
  /// Sets which mode to use for Protect workload vulnerability scanning feature.
  final pulumi.Input<ProtectConfigWorkloadVulnerabilityMode>? workloadVulnerabilityMode;

  /// Creates a new [ProtectConfig].
  /// [workloadConfig] WorkloadConfig defines which actions are enabled for a cluster's workload configurations.
  /// [workloadVulnerabilityMode] Sets which mode to use for Protect workload vulnerability scanning feature.
  ProtectConfig({
    this.workloadConfig,
    this.workloadVulnerabilityMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'workloadConfig': ?pulumi.Input.mapOptionalInputValue<WorkloadConfig, Map<String, dynamic>>(workloadConfig, (value) => value.toMap()),
      'workloadVulnerabilityMode': ?pulumi.Input.mapOptionalInputValue<ProtectConfigWorkloadVulnerabilityMode, String>(workloadVulnerabilityMode, (value) => value.value),
    };
  }

  factory ProtectConfig.fromMap(Map<String, dynamic> map) {
    return ProtectConfig(
      workloadConfig: map['workloadConfig'] == null ? null : (WorkloadConfig.fromMap((map['workloadConfig'] as Map).cast<String, dynamic>())).input(),
      workloadVulnerabilityMode: map['workloadVulnerabilityMode'] == null ? null : (ProtectConfigWorkloadVulnerabilityMode.fromValue(map['workloadVulnerabilityMode'] as String)).input(),
    );
  }
}

