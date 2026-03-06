// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies config to enable/disable auto repair. The cluster-health-controller is deployed only if Enabled is true.
class VmwareAutoRepairConfig {
  /// Whether auto repair is enabled.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [VmwareAutoRepairConfig].
  /// [enabled] Whether auto repair is enabled.
  const VmwareAutoRepairConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory VmwareAutoRepairConfig.fromMap(Map<String, dynamic> map) {
    return VmwareAutoRepairConfig(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

