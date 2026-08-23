// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodeConfigLocalNvmeSsdBlockConfig {
  /// Number of raw-block local NVMe SSD disks to be attached to the node. Each local SSD is 375 GB in size. If zero, it means no raw-block local NVMe SSD disks to be attached to the node.
  /// &gt; Note: Local NVMe SSD storage available in GKE versions v1.25.3-gke.1800 and later.
  final pulumi.Input<int> localSsdCount;

  /// Creates a new [ClusterNodeConfigLocalNvmeSsdBlockConfig].
  /// [localSsdCount] Number of raw-block local NVMe SSD disks to be attached to the node. Each local SSD is 375 GB in size. If zero, it means no raw-block local NVMe SSD disks to be attached to the node.
  const ClusterNodeConfigLocalNvmeSsdBlockConfig({
    required this.localSsdCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localSsdCount': localSsdCount,
    };
  }

  factory ClusterNodeConfigLocalNvmeSsdBlockConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigLocalNvmeSsdBlockConfig(
      localSsdCount: pulumi.Input.fromValue(map['localSsdCount'] as int),
    );
  }
}
