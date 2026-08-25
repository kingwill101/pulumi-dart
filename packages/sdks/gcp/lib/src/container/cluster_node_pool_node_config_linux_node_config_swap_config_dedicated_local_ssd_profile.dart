// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigDedicatedLocalSsdProfile {
  /// The number of physical local NVMe SSD disks to attach.
  final pulumi.Input<int?>? diskCount;

  /// Creates a new [ClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigDedicatedLocalSsdProfile].
  /// [diskCount] The number of physical local NVMe SSD disks to attach.
  const ClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigDedicatedLocalSsdProfile({
    this.diskCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskCount': ?diskCount,
    };
  }

  factory ClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigDedicatedLocalSsdProfile.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigDedicatedLocalSsdProfile(
      diskCount: (() { final guardedValue = map['diskCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
