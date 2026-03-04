// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodePoolNodeConfigEphemeralStorageConfig {
  /// Number of local SSDs to use to back ephemeral storage. Uses NVMe interfaces. Each local SSD is 375 GB in size. If zero, it means to disable using local SSDs as ephemeral storage.
  final pulumi.Input<int> localSsdCount;

  /// Creates a new [ClusterNodePoolNodeConfigEphemeralStorageConfig].
  /// [localSsdCount] Number of local SSDs to use to back ephemeral storage. Uses NVMe interfaces. Each local SSD is 375 GB in size. If zero, it means to disable using local SSDs as ephemeral storage.
  ClusterNodePoolNodeConfigEphemeralStorageConfig({
    required this.localSsdCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'localSsdCount': localSsdCount};
  }

  factory ClusterNodePoolNodeConfigEphemeralStorageConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterNodePoolNodeConfigEphemeralStorageConfig(
      localSsdCount: pulumi.Input.fromValue(map['localSsdCount'] as int),
    );
  }
}
