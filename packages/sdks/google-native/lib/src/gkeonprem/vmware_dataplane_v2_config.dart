// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains configurations for Dataplane V2, which is optimized dataplane for Kubernetes networking. For more information, see: https://cloud.google.com/kubernetes-engine/docs/concepts/dataplane-v2
class VmwareDataplaneV2Config {
  /// Enable advanced networking which requires dataplane_v2_enabled to be set true.
  final pulumi.Input<bool>? advancedNetworking;

  /// Enables Dataplane V2.
  final pulumi.Input<bool>? dataplaneV2Enabled;

  /// Enable Dataplane V2 for clusters with Windows nodes.
  final pulumi.Input<bool>? windowsDataplaneV2Enabled;

  /// Creates a new [VmwareDataplaneV2Config].
  /// [advancedNetworking] Enable advanced networking which requires dataplane_v2_enabled to be set true.
  /// [dataplaneV2Enabled] Enables Dataplane V2.
  /// [windowsDataplaneV2Enabled] Enable Dataplane V2 for clusters with Windows nodes.
  VmwareDataplaneV2Config({
    this.advancedNetworking,
    this.dataplaneV2Enabled,
    this.windowsDataplaneV2Enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedNetworking': ?advancedNetworking,
      'dataplaneV2Enabled': ?dataplaneV2Enabled,
      'windowsDataplaneV2Enabled': ?windowsDataplaneV2Enabled,
    };
  }

  factory VmwareDataplaneV2Config.fromMap(Map<String, dynamic> map) {
    return VmwareDataplaneV2Config(
      advancedNetworking: (() {
        final guardedValue = map['advancedNetworking'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      dataplaneV2Enabled: (() {
        final guardedValue = map['dataplaneV2Enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      windowsDataplaneV2Enabled: (() {
        final guardedValue = map['windowsDataplaneV2Enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
