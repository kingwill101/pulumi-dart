// ignore_for_file: unused_element, unnecessary_cast


class ClusterLoggingConfig {
  /// The GKE components exposing logs. Supported values include:
  /// `SYSTEM_COMPONENTS`, `APISERVER`, `CONTROLLER_MANAGER`, `SCHEDULER`, and `WORKLOADS`.
  final List<String> enableComponents;

  /// Creates a new [ClusterLoggingConfig].
  /// [enableComponents] The GKE components exposing logs. Supported values include:
  ClusterLoggingConfig({
    required this.enableComponents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableComponents': enableComponents,
    };
  }

  factory ClusterLoggingConfig.fromMap(Map<String, dynamic> map) {
    return ClusterLoggingConfig(
      enableComponents: (map['enableComponents'] as List).cast<String>(),
    );
  }
}

