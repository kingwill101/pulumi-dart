// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodeConfigLinuxNodeConfigSwapConfigEphemeralLocalSsdProfile {
  /// Specifies the size of the swap space in gibibytes (GiB).
  final pulumi.Input<int> swapSizeGib;
  /// Specifies the size of the swap space as a percentage of the ephemeral local SSD capacity.
  final pulumi.Input<int> swapSizePercent;

  /// Creates a new [GetClusterNodeConfigLinuxNodeConfigSwapConfigEphemeralLocalSsdProfile].
  /// [swapSizeGib] Specifies the size of the swap space in gibibytes (GiB).
  /// [swapSizePercent] Specifies the size of the swap space as a percentage of the ephemeral local SSD capacity.
  const GetClusterNodeConfigLinuxNodeConfigSwapConfigEphemeralLocalSsdProfile({
    required this.swapSizeGib,
    required this.swapSizePercent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'swapSizeGib': swapSizeGib,
      'swapSizePercent': swapSizePercent,
    };
  }

  factory GetClusterNodeConfigLinuxNodeConfigSwapConfigEphemeralLocalSsdProfile.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigLinuxNodeConfigSwapConfigEphemeralLocalSsdProfile(
      swapSizeGib: pulumi.Input.fromValue(map['swapSizeGib'] as int),
      swapSizePercent: pulumi.Input.fromValue(map['swapSizePercent'] as int),
    );
  }
}
