// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_config_audit_mode.dart';

/// WorkloadConfig defines the flags to enable or disable the workload configurations for the cluster.
class WorkloadConfig {
  /// Sets which mode of auditing should be used for the cluster's workloads.
  final pulumi.Input<WorkloadConfigAuditMode>? auditMode;

  /// Creates a new [WorkloadConfig].
  /// [auditMode] Sets which mode of auditing should be used for the cluster's workloads.
  const WorkloadConfig({
    this.auditMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditMode': ?pulumi.Input.mapOptionalInputValue<WorkloadConfigAuditMode, String>(auditMode, (value) => value.wireValue),
    };
  }

  factory WorkloadConfig.fromMap(Map<String, dynamic> map) {
    return WorkloadConfig(
      auditMode: (() { final guardedValue = map['auditMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkloadConfigAuditMode.fromValue(guardedValue as String)); })(),
    );
  }
}

