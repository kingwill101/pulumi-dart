// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VmwareAdminClusterAddonNodeAutoResizeConfig {
  /// Whether to enable controle plane node auto resizing.
  final pulumi.Input<bool> enabled;

  /// Creates a new [VmwareAdminClusterAddonNodeAutoResizeConfig].
  /// [enabled] Whether to enable controle plane node auto resizing.
  VmwareAdminClusterAddonNodeAutoResizeConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory VmwareAdminClusterAddonNodeAutoResizeConfig.fromMap(Map<String, dynamic> map) {
    return VmwareAdminClusterAddonNodeAutoResizeConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

