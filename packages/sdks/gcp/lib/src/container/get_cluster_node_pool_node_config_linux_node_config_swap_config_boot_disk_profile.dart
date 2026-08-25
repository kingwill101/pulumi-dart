// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigBootDiskProfile {
  /// Specifies the size of the swap space in gibibytes (GiB).
  final pulumi.Input<int> swapSizeGib;
  /// Specifies the size of the swap space as a percentage of the boot disk size.
  final pulumi.Input<int> swapSizePercent;

  /// Creates a new [GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigBootDiskProfile].
  /// [swapSizeGib] Specifies the size of the swap space in gibibytes (GiB).
  /// [swapSizePercent] Specifies the size of the swap space as a percentage of the boot disk size.
  const GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigBootDiskProfile({
    required this.swapSizeGib,
    required this.swapSizePercent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'swapSizeGib': swapSizeGib,
      'swapSizePercent': swapSizePercent,
    };
  }

  factory GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigBootDiskProfile.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigBootDiskProfile(
      swapSizeGib: pulumi.Input.fromValue((map['swapSizeGib'] as num).toInt()),
      swapSizePercent: pulumi.Input.fromValue((map['swapSizePercent'] as num).toInt()),
    );
  }
}
