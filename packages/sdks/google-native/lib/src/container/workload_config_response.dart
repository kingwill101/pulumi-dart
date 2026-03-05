// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// WorkloadConfig defines the flags to enable or disable the workload configurations for the cluster.
class WorkloadConfigResponse {
  /// Sets which mode of auditing should be used for the cluster's workloads.
  final pulumi.Input<String> auditMode;

  /// Creates a new [WorkloadConfigResponse].
  /// [auditMode] Sets which mode of auditing should be used for the cluster's workloads.
  WorkloadConfigResponse({
    required this.auditMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditMode': auditMode,
    };
  }

  factory WorkloadConfigResponse.fromMap(Map<String, dynamic> map) {
    return WorkloadConfigResponse(
      auditMode: pulumi.Input.fromValue(map['auditMode'] as String),
    );
  }
}

