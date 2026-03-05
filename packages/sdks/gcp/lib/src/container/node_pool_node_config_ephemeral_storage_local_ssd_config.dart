// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolNodeConfigEphemeralStorageLocalSsdConfig {
  /// Number of local SSDs to be utilized for GKE Data Cache. Uses NVMe interfaces.
  final pulumi.Input<int>? dataCacheCount;
  /// Number of local SSDs to use to back ephemeral storage. Uses NVMe interfaces. Each local SSD must be 375 or 3000 GB in size, and all local SSDs must share the same size.
  final pulumi.Input<int> localSsdCount;

  /// Creates a new [NodePoolNodeConfigEphemeralStorageLocalSsdConfig].
  /// [dataCacheCount] Number of local SSDs to be utilized for GKE Data Cache. Uses NVMe interfaces.
  /// [localSsdCount] Number of local SSDs to use to back ephemeral storage. Uses NVMe interfaces. Each local SSD must be 375 or 3000 GB in size, and all local SSDs must share the same size.
  NodePoolNodeConfigEphemeralStorageLocalSsdConfig({
    this.dataCacheCount,
    required this.localSsdCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataCacheCount': ?dataCacheCount,
      'localSsdCount': localSsdCount,
    };
  }

  factory NodePoolNodeConfigEphemeralStorageLocalSsdConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigEphemeralStorageLocalSsdConfig(
      dataCacheCount: (() { final guardedValue = map['dataCacheCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      localSsdCount: pulumi.Input.fromValue(map['localSsdCount'] as int),
    );
  }
}

