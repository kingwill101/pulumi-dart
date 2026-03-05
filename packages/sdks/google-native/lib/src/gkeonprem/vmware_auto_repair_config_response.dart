// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies config to enable/disable auto repair. The cluster-health-controller is deployed only if Enabled is true.
class VmwareAutoRepairConfigResponse {
  /// Whether auto repair is enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [VmwareAutoRepairConfigResponse].
  /// [enabled] Whether auto repair is enabled.
  VmwareAutoRepairConfigResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory VmwareAutoRepairConfigResponse.fromMap(Map<String, dynamic> map) {
    return VmwareAutoRepairConfigResponse(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

