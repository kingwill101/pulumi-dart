// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PolicyControllerMonitoring specifies the backends Policy Controller should export metrics to. For example, to specify metrics should be exported to Cloud Monitoring and Prometheus, specify backends: ["cloudmonitoring", "prometheus"]
class ConfigManagementPolicyControllerMonitoringResponse {
  /// Specifies the list of backends Policy Controller will export to. An empty list would effectively disable metrics export.
  final pulumi.Input<List<String>> backends;

  /// Creates a new [ConfigManagementPolicyControllerMonitoringResponse].
  /// [backends] Specifies the list of backends Policy Controller will export to. An empty list would effectively disable metrics export.
  const ConfigManagementPolicyControllerMonitoringResponse({
    required this.backends,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backends': backends,
    };
  }

  factory ConfigManagementPolicyControllerMonitoringResponse.fromMap(Map<String, dynamic> map) {
    return ConfigManagementPolicyControllerMonitoringResponse(
      backends: pulumi.Input.fromValue((map['backends'] as List).cast<String>()),
    );
  }
}
