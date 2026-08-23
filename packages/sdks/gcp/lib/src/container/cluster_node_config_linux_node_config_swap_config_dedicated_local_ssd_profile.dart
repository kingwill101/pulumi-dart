// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodeConfigLinuxNodeConfigSwapConfigDedicatedLocalSsdProfile {
  /// The number of physical local NVMe SSD disks to attach.
  final pulumi.Input<int>? diskCount;

  /// Creates a new [ClusterNodeConfigLinuxNodeConfigSwapConfigDedicatedLocalSsdProfile].
  /// [diskCount] The number of physical local NVMe SSD disks to attach.
  const ClusterNodeConfigLinuxNodeConfigSwapConfigDedicatedLocalSsdProfile({
    this.diskCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskCount': ?diskCount,
    };
  }

  factory ClusterNodeConfigLinuxNodeConfigSwapConfigDedicatedLocalSsdProfile.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigLinuxNodeConfigSwapConfigDedicatedLocalSsdProfile(
      diskCount: (() { final guardedValue = map['diskCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
