// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents auto resizing configurations for the VMware user cluster.
class VmwareAutoResizeConfigResponse {
  /// Whether to enable controle plane node auto resizing.
  final pulumi.Input<bool> enabled;

  /// Creates a new [VmwareAutoResizeConfigResponse].
  /// [enabled] Whether to enable controle plane node auto resizing.
  const VmwareAutoResizeConfigResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory VmwareAutoResizeConfigResponse.fromMap(Map<String, dynamic> map) {
    return VmwareAutoResizeConfigResponse(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

