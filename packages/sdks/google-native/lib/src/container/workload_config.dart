// ignore_for_file: unused_element, unnecessary_cast

import 'workload_config_audit_mode.dart';

/// WorkloadConfig defines the flags to enable or disable the workload configurations for the cluster.
class WorkloadConfig {
  /// Sets which mode of auditing should be used for the cluster's workloads.
  final WorkloadConfigAuditMode? auditMode;

  /// Creates a new [WorkloadConfig].
  /// [auditMode] Sets which mode of auditing should be used for the cluster's workloads.
  WorkloadConfig({
    this.auditMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditMode': ?auditMode == null ? null : auditMode!.value,
    };
  }

  factory WorkloadConfig.fromMap(Map<String, dynamic> map) {
    return WorkloadConfig(
      auditMode: map['auditMode'] == null ? null : WorkloadConfigAuditMode.fromValue(map['auditMode'] as String),
    );
  }
}

