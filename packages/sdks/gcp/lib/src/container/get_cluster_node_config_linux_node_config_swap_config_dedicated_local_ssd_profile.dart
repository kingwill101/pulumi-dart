// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodeConfigLinuxNodeConfigSwapConfigDedicatedLocalSsdProfile {
  /// The number of physical local NVMe SSD disks to attach.
  final pulumi.Input<int> diskCount;

  /// Creates a new [GetClusterNodeConfigLinuxNodeConfigSwapConfigDedicatedLocalSsdProfile].
  /// [diskCount] The number of physical local NVMe SSD disks to attach.
  const GetClusterNodeConfigLinuxNodeConfigSwapConfigDedicatedLocalSsdProfile({
    required this.diskCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskCount': diskCount,
    };
  }

  factory GetClusterNodeConfigLinuxNodeConfigSwapConfigDedicatedLocalSsdProfile.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigLinuxNodeConfigSwapConfigDedicatedLocalSsdProfile(
      diskCount: pulumi.Input.fromValue(map['diskCount'] as int),
    );
  }
}
