// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigDedicatedLocalSsdProfile {
  /// The number of physical local NVMe SSD disks to attach.
  final pulumi.Input<int> diskCount;

  /// Creates a new [GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigDedicatedLocalSsdProfile].
  /// [diskCount] The number of physical local NVMe SSD disks to attach.
  const GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigDedicatedLocalSsdProfile({
    required this.diskCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskCount': diskCount,
    };
  }

  factory GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigDedicatedLocalSsdProfile.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigDedicatedLocalSsdProfile(
      diskCount: pulumi.Input.fromValue(map['diskCount'] as int),
    );
  }
}
