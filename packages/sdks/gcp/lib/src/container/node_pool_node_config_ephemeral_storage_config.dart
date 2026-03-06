// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolNodeConfigEphemeralStorageConfig {
  /// Number of local SSDs to use to back ephemeral storage. Uses NVMe interfaces. Each local SSD must be 375 or 3000 GB in size, and all local SSDs must share the same size.
  final pulumi.Input<int> localSsdCount;

  /// Creates a new [NodePoolNodeConfigEphemeralStorageConfig].
  /// [localSsdCount] Number of local SSDs to use to back ephemeral storage. Uses NVMe interfaces. Each local SSD must be 375 or 3000 GB in size, and all local SSDs must share the same size.
  const NodePoolNodeConfigEphemeralStorageConfig({
    required this.localSsdCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localSsdCount': localSsdCount,
    };
  }

  factory NodePoolNodeConfigEphemeralStorageConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigEphemeralStorageConfig(
      localSsdCount: pulumi.Input.fromValue(map['localSsdCount'] as int),
    );
  }
}

