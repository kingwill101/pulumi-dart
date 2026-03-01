// ignore_for_file: unused_element, unnecessary_cast


/// PolicyControllerMonitoring specifies the backends Policy Controller should export metrics to. For example, to specify metrics should be exported to Cloud Monitoring and Prometheus, specify backends: ["cloudmonitoring", "prometheus"]
class ConfigManagementPolicyControllerMonitoringResponseGkehubV1beta {
  /// Specifies the list of backends Policy Controller will export to. An empty list would effectively disable metrics export.
  final List<String> backends;

  /// Creates a new [ConfigManagementPolicyControllerMonitoringResponseGkehubV1beta].
  /// [backends] Specifies the list of backends Policy Controller will export to. An empty list would effectively disable metrics export.
  ConfigManagementPolicyControllerMonitoringResponseGkehubV1beta({
    required this.backends,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backends': backends,
    };
  }

  factory ConfigManagementPolicyControllerMonitoringResponseGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return ConfigManagementPolicyControllerMonitoringResponseGkehubV1beta(
      backends: (map['backends'] as List).cast<String>(),
    );
  }
}

