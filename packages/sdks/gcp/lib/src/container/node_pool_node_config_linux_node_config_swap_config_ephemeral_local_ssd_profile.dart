// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolNodeConfigLinuxNodeConfigSwapConfigEphemeralLocalSsdProfile {
  /// Specifies the size of the swap space in gibibytes (GiB).
  final pulumi.Input<int>? swapSizeGib;
  /// Specifies the size of the swap space as a percentage of the ephemeral local SSD capacity.
  final pulumi.Input<int>? swapSizePercent;

  /// Creates a new [NodePoolNodeConfigLinuxNodeConfigSwapConfigEphemeralLocalSsdProfile].
  /// [swapSizeGib] Specifies the size of the swap space in gibibytes (GiB).
  /// [swapSizePercent] Specifies the size of the swap space as a percentage of the ephemeral local SSD capacity.
  const NodePoolNodeConfigLinuxNodeConfigSwapConfigEphemeralLocalSsdProfile({
    this.swapSizeGib,
    this.swapSizePercent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'swapSizeGib': ?swapSizeGib,
      'swapSizePercent': ?swapSizePercent,
    };
  }

  factory NodePoolNodeConfigLinuxNodeConfigSwapConfigEphemeralLocalSsdProfile.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigLinuxNodeConfigSwapConfigEphemeralLocalSsdProfile(
      swapSizeGib: (() { final guardedValue = map['swapSizeGib']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      swapSizePercent: (() { final guardedValue = map['swapSizePercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
