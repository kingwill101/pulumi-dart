// ignore_for_file: unused_element, unnecessary_cast


/// GKEUpgrade represents a GKE provided upgrade, e.g., control plane upgrade.
class ClusterUpgradeGKEUpgradeResponse {
  /// Name of the upgrade, e.g., "k8s_control_plane". It should be a valid upgrade name. It must not exceet 99 characters.
  final String name;
  /// Version of the upgrade, e.g., "1.22.1-gke.100". It should be a valid version. It must not exceet 99 characters.
  final String version;

  /// Creates a new [ClusterUpgradeGKEUpgradeResponse].
  /// [name] Name of the upgrade, e.g., "k8s_control_plane". It should be a valid upgrade name. It must not exceet 99 characters.
  /// [version] Version of the upgrade, e.g., "1.22.1-gke.100". It should be a valid version. It must not exceet 99 characters.
  ClusterUpgradeGKEUpgradeResponse({
    required this.name,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'version': version,
    };
  }

  factory ClusterUpgradeGKEUpgradeResponse.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradeGKEUpgradeResponse(
      name: map['name'] as String,
      version: map['version'] as String,
    );
  }
}

