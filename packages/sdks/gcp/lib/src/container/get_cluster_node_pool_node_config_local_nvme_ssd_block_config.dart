// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodePoolNodeConfigLocalNvmeSsdBlockConfig {
  /// Number of raw-block local NVMe SSD disks to be attached to the node. Each local SSD is 375 GB in size.
  final pulumi.Input<int> localSsdCount;

  /// Creates a new [GetClusterNodePoolNodeConfigLocalNvmeSsdBlockConfig].
  /// [localSsdCount] Number of raw-block local NVMe SSD disks to be attached to the node. Each local SSD is 375 GB in size.
  const GetClusterNodePoolNodeConfigLocalNvmeSsdBlockConfig({
    required this.localSsdCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localSsdCount': localSsdCount,
    };
  }

  factory GetClusterNodePoolNodeConfigLocalNvmeSsdBlockConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigLocalNvmeSsdBlockConfig(
      localSsdCount: pulumi.Input.fromValue(map['localSsdCount'] as int),
    );
  }
}
