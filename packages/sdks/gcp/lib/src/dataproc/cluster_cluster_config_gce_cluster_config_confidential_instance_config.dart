// ignore_for_file: unused_element, unnecessary_cast


class ClusterClusterConfigGceClusterConfigConfidentialInstanceConfig {
  /// Defines whether the instance should have confidential compute enabled.
  final bool? enableConfidentialCompute;

  /// Creates a new [ClusterClusterConfigGceClusterConfigConfidentialInstanceConfig].
  /// [enableConfidentialCompute] Defines whether the instance should have confidential compute enabled.
  ClusterClusterConfigGceClusterConfigConfidentialInstanceConfig({
    this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableConfidentialCompute': ?enableConfidentialCompute,
    };
  }

  factory ClusterClusterConfigGceClusterConfigConfidentialInstanceConfig.fromMap(Map<String, dynamic> map) {
    return ClusterClusterConfigGceClusterConfigConfidentialInstanceConfig(
      enableConfidentialCompute: map['enableConfidentialCompute'] == null ? null : map['enableConfidentialCompute'] as bool,
    );
  }
}

