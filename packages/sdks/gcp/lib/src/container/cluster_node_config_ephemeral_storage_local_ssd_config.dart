// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodeConfigEphemeralStorageLocalSsdConfig {
  /// Number of raw-block local NVMe SSD disks to be attached to the node utilized for GKE Data Cache. If zero, then GKE Data Cache will not be enabled in the nodes.
  final pulumi.Input<int>? dataCacheCount;
  /// Number of local SSDs to use to back ephemeral storage. Uses NVMe interfaces. Each local SSD is 375 GB in size. If zero, it means to disable using local SSDs as ephemeral storage.
  final pulumi.Input<int> localSsdCount;

  /// Creates a new [ClusterNodeConfigEphemeralStorageLocalSsdConfig].
  /// [dataCacheCount] Number of raw-block local NVMe SSD disks to be attached to the node utilized for GKE Data Cache. If zero, then GKE Data Cache will not be enabled in the nodes.
  /// [localSsdCount] Number of local SSDs to use to back ephemeral storage. Uses NVMe interfaces. Each local SSD is 375 GB in size. If zero, it means to disable using local SSDs as ephemeral storage.
  const ClusterNodeConfigEphemeralStorageLocalSsdConfig({
    this.dataCacheCount,
    required this.localSsdCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataCacheCount': ?dataCacheCount,
      'localSsdCount': localSsdCount,
    };
  }

  factory ClusterNodeConfigEphemeralStorageLocalSsdConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigEphemeralStorageLocalSsdConfig(
      dataCacheCount: (() { final guardedValue = map['dataCacheCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      localSsdCount: pulumi.Input.fromValue(map['localSsdCount'] as int),
    );
  }
}

