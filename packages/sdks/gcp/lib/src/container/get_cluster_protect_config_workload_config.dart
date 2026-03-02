// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterProtectConfigWorkloadConfig {
  /// Sets which mode of auditing should be used for the cluster's workloads. Accepted values are DISABLED, BASIC.
  final pulumi.Input<String> auditMode;

  /// Creates a new [GetClusterProtectConfigWorkloadConfig].
  /// [auditMode] Sets which mode of auditing should be used for the cluster's workloads. Accepted values are DISABLED, BASIC.
  GetClusterProtectConfigWorkloadConfig({
    required this.auditMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditMode': auditMode,
    };
  }

  factory GetClusterProtectConfigWorkloadConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterProtectConfigWorkloadConfig(
      auditMode: (map['auditMode'] as String).input(),
    );
  }
}

