// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_protect_config_workload_config.dart';

class ClusterProtectConfig {
  /// WorkloadConfig defines which actions are enabled for a cluster's workload configurations. Structure is documented below
  final pulumi.Input<ClusterProtectConfigWorkloadConfig>? workloadConfig;
  /// Sets which mode to use for Protect workload vulnerability scanning feature. Accepted values are DISABLED, BASIC.
  final pulumi.Input<String>? workloadVulnerabilityMode;

  /// Creates a new [ClusterProtectConfig].
  /// [workloadConfig] WorkloadConfig defines which actions are enabled for a cluster's workload configurations. Structure is documented below
  /// [workloadVulnerabilityMode] Sets which mode to use for Protect workload vulnerability scanning feature. Accepted values are DISABLED, BASIC.
  ClusterProtectConfig({
    this.workloadConfig,
    this.workloadVulnerabilityMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'workloadConfig': ?pulumi.Input.mapOptionalInputValue<ClusterProtectConfigWorkloadConfig, Map<String, dynamic>>(workloadConfig, (value) => value.toMap()),
      'workloadVulnerabilityMode': ?workloadVulnerabilityMode,
    };
  }

  factory ClusterProtectConfig.fromMap(Map<String, dynamic> map) {
    return ClusterProtectConfig(
      workloadConfig: (() { final guardedValue = map['workloadConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterProtectConfigWorkloadConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workloadVulnerabilityMode: (() { final guardedValue = map['workloadVulnerabilityMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

