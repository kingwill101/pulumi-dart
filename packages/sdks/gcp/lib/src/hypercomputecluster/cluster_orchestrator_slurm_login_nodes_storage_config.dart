// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterOrchestratorSlurmLoginNodesStorageConfig {
  /// ID of the storage resource to mount, which must match a key in the
  /// cluster's storage_resources.
  final pulumi.Input<String> id;
  /// A directory inside the VM instance's file system where the storage resource
  /// should be mounted (e.g., `/mnt/share`).
  final pulumi.Input<String> localMount;

  /// Creates a new [ClusterOrchestratorSlurmLoginNodesStorageConfig].
  /// [id] ID of the storage resource to mount, which must match a key in the
  /// [localMount] A directory inside the VM instance's file system where the storage resource
  const ClusterOrchestratorSlurmLoginNodesStorageConfig({
    required this.id,
    required this.localMount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'localMount': localMount,
    };
  }

  factory ClusterOrchestratorSlurmLoginNodesStorageConfig.fromMap(Map<String, dynamic> map) {
    return ClusterOrchestratorSlurmLoginNodesStorageConfig(
      id: pulumi.Input.fromValue(map['id'] as String),
      localMount: pulumi.Input.fromValue(map['localMount'] as String),
    );
  }
}
