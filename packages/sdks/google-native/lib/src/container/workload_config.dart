// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_config_audit_mode.dart';

/// WorkloadConfig defines the flags to enable or disable the workload configurations for the cluster.
class WorkloadConfig {
  /// Sets which mode of auditing should be used for the cluster's workloads.
  final pulumi.Input<WorkloadConfigAuditMode>? auditMode;

  /// Creates a new [WorkloadConfig].
  /// [auditMode] Sets which mode of auditing should be used for the cluster's workloads.
  WorkloadConfig({
    this.auditMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditMode': ?pulumi.Input.mapOptionalInputValue<WorkloadConfigAuditMode, String>(auditMode, (value) => value.value),
    };
  }

  factory WorkloadConfig.fromMap(Map<String, dynamic> map) {
    return WorkloadConfig(
      auditMode: map['auditMode'] == null ? null : (WorkloadConfigAuditMode.fromValue(map['auditMode']! as String)).input(),
    );
  }
}

