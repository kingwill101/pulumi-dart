// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VMwareClusterDataplaneV2 {
  /// Enable advanced networking which requires dataplane_v2_enabled to be set true.
  final pulumi.Input<bool>? advancedNetworking;

  /// Enables Dataplane V2.
  final pulumi.Input<bool>? dataplaneV2Enabled;

  /// Enable Dataplane V2 for clusters with Windows nodes.
  final pulumi.Input<bool>? windowsDataplaneV2Enabled;

  /// Creates a new [VMwareClusterDataplaneV2].
  /// [advancedNetworking] Enable advanced networking which requires dataplane_v2_enabled to be set true.
  /// [dataplaneV2Enabled] Enables Dataplane V2.
  /// [windowsDataplaneV2Enabled] Enable Dataplane V2 for clusters with Windows nodes.
  VMwareClusterDataplaneV2({
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

  factory VMwareClusterDataplaneV2.fromMap(Map<String, dynamic> map) {
    return VMwareClusterDataplaneV2(
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
