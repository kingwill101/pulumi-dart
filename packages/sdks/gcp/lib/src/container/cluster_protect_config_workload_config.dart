// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterProtectConfigWorkloadConfig {
  /// Sets which mode of auditing should be used for the cluster's workloads. Accepted values are DISABLED, BASIC.
  final pulumi.Input<String> auditMode;

  /// Creates a new [ClusterProtectConfigWorkloadConfig].
  /// [auditMode] Sets which mode of auditing should be used for the cluster's workloads. Accepted values are DISABLED, BASIC.
  ClusterProtectConfigWorkloadConfig({required this.auditMode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'auditMode': auditMode};
  }

  factory ClusterProtectConfigWorkloadConfig.fromMap(Map<String, dynamic> map) {
    return ClusterProtectConfigWorkloadConfig(
      auditMode: pulumi.Input.fromValue(map['auditMode'] as String),
    );
  }
}
