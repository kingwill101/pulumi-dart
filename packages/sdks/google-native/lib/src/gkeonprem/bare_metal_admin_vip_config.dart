// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// BareMetalAdminVipConfig for bare metal load balancer configurations.
class BareMetalAdminVipConfig {
  /// The VIP which you previously set aside for the Kubernetes API of this bare metal admin cluster.
  final pulumi.Input<String>? controlPlaneVip;

  /// Creates a new [BareMetalAdminVipConfig].
  /// [controlPlaneVip] The VIP which you previously set aside for the Kubernetes API of this bare metal admin cluster.
  const BareMetalAdminVipConfig({
    this.controlPlaneVip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlaneVip': ?controlPlaneVip,
    };
  }

  factory BareMetalAdminVipConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminVipConfig(
      controlPlaneVip: (() { final guardedValue = map['controlPlaneVip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
