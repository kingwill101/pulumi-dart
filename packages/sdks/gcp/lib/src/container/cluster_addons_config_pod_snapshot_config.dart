// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterAddonsConfigPodSnapshotConfig {
  /// Whether the Pod Snapshot feature is enabled for this cluster.
  final pulumi.Input<bool> enabled;

  /// Creates a new [ClusterAddonsConfigPodSnapshotConfig].
  /// [enabled] Whether the Pod Snapshot feature is enabled for this cluster.
  ClusterAddonsConfigPodSnapshotConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ClusterAddonsConfigPodSnapshotConfig.fromMap(Map<String, dynamic> map) {
    return ClusterAddonsConfigPodSnapshotConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

