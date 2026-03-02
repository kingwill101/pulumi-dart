// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GKEUpgrade represents a GKE provided upgrade, e.g., control plane upgrade.
class ClusterUpgradeGKEUpgradeResponseGkehubV1beta {
  /// Name of the upgrade, e.g., "k8s_control_plane". It should be a valid upgrade name. It must not exceet 99 characters.
  final pulumi.Input<String> name;
  /// Version of the upgrade, e.g., "1.22.1-gke.100". It should be a valid version. It must not exceet 99 characters.
  final pulumi.Input<String> version;

  /// Creates a new [ClusterUpgradeGKEUpgradeResponseGkehubV1beta].
  /// [name] Name of the upgrade, e.g., "k8s_control_plane". It should be a valid upgrade name. It must not exceet 99 characters.
  /// [version] Version of the upgrade, e.g., "1.22.1-gke.100". It should be a valid version. It must not exceet 99 characters.
  ClusterUpgradeGKEUpgradeResponseGkehubV1beta({
    required this.name,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'version': version,
    };
  }

  factory ClusterUpgradeGKEUpgradeResponseGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradeGKEUpgradeResponseGkehubV1beta(
      name: (map['name'] as String).input(),
      version: (map['version'] as String).input(),
    );
  }
}

