// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodeConfigEphemeralStorageConfig {
  /// Number of local SSDs to use to back ephemeral storage. Uses NVMe interfaces. Each local SSD is 375 GB in size. If zero, it means to disable using local SSDs as ephemeral storage.
  final pulumi.Input<int> localSsdCount;

  /// Creates a new [ClusterNodeConfigEphemeralStorageConfig].
  /// [localSsdCount] Number of local SSDs to use to back ephemeral storage. Uses NVMe interfaces. Each local SSD is 375 GB in size. If zero, it means to disable using local SSDs as ephemeral storage.
  const ClusterNodeConfigEphemeralStorageConfig({
    required this.localSsdCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localSsdCount': localSsdCount,
    };
  }

  factory ClusterNodeConfigEphemeralStorageConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigEphemeralStorageConfig(
      localSsdCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['localSsdCount'])),
    );
  }
}
