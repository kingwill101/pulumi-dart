// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigEphemeralLocalSsdProfile {
  /// Specifies the size of the swap space in gibibytes (GiB).
  final pulumi.Input<int>? swapSizeGib;
  /// Specifies the size of the swap space as a percentage of the ephemeral local SSD capacity.
  final pulumi.Input<int>? swapSizePercent;

  /// Creates a new [ClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigEphemeralLocalSsdProfile].
  /// [swapSizeGib] Specifies the size of the swap space in gibibytes (GiB).
  /// [swapSizePercent] Specifies the size of the swap space as a percentage of the ephemeral local SSD capacity.
  const ClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigEphemeralLocalSsdProfile({
    this.swapSizeGib,
    this.swapSizePercent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'swapSizeGib': ?swapSizeGib,
      'swapSizePercent': ?swapSizePercent,
    };
  }

  factory ClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigEphemeralLocalSsdProfile.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigEphemeralLocalSsdProfile(
      swapSizeGib: (() { final guardedValue = map['swapSizeGib']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      swapSizePercent: (() { final guardedValue = map['swapSizePercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
