// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolNodeConfigLinuxNodeConfigSwapConfigDedicatedLocalSsdProfile {
  /// The number of physical local NVMe SSD disks to attach.
  final pulumi.Input<int?>? diskCount;

  /// Creates a new [NodePoolNodeConfigLinuxNodeConfigSwapConfigDedicatedLocalSsdProfile].
  /// [diskCount] The number of physical local NVMe SSD disks to attach.
  const NodePoolNodeConfigLinuxNodeConfigSwapConfigDedicatedLocalSsdProfile({
    this.diskCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskCount': ?diskCount,
    };
  }

  factory NodePoolNodeConfigLinuxNodeConfigSwapConfigDedicatedLocalSsdProfile.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigLinuxNodeConfigSwapConfigDedicatedLocalSsdProfile(
      diskCount: (() { final guardedValue = map['diskCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
