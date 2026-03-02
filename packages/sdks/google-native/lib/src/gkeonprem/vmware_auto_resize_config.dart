// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents auto resizing configurations for the VMware user cluster.
class VmwareAutoResizeConfig {
  /// Whether to enable controle plane node auto resizing.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [VmwareAutoResizeConfig].
  /// [enabled] Whether to enable controle plane node auto resizing.
  VmwareAutoResizeConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory VmwareAutoResizeConfig.fromMap(Map<String, dynamic> map) {
    return VmwareAutoResizeConfig(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
    );
  }
}

