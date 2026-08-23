// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigBootDiskProfile {
  /// Specifies the size of the swap space in gibibytes (GiB).
  final pulumi.Input<int>? swapSizeGib;
  /// Specifies the size of the swap space as a percentage of the boot disk size.
  final pulumi.Input<int>? swapSizePercent;

  /// Creates a new [ClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigBootDiskProfile].
  /// [swapSizeGib] Specifies the size of the swap space in gibibytes (GiB).
  /// [swapSizePercent] Specifies the size of the swap space as a percentage of the boot disk size.
  const ClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigBootDiskProfile({
    this.swapSizeGib,
    this.swapSizePercent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'swapSizeGib': ?swapSizeGib,
      'swapSizePercent': ?swapSizePercent,
    };
  }

  factory ClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigBootDiskProfile.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigBootDiskProfile(
      swapSizeGib: (() { final guardedValue = map['swapSizeGib']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      swapSizePercent: (() { final guardedValue = map['swapSizePercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
