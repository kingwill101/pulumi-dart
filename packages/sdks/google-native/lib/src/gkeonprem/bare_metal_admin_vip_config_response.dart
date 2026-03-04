// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// BareMetalAdminVipConfig for bare metal load balancer configurations.
class BareMetalAdminVipConfigResponse {
  /// The VIP which you previously set aside for the Kubernetes API of this bare metal admin cluster.
  final pulumi.Input<String> controlPlaneVip;

  /// Creates a new [BareMetalAdminVipConfigResponse].
  /// [controlPlaneVip] The VIP which you previously set aside for the Kubernetes API of this bare metal admin cluster.
  BareMetalAdminVipConfigResponse({required this.controlPlaneVip});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'controlPlaneVip': controlPlaneVip};
  }

  factory BareMetalAdminVipConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminVipConfigResponse(
      controlPlaneVip: pulumi.Input.fromValue(map['controlPlaneVip'] as String),
    );
  }
}
