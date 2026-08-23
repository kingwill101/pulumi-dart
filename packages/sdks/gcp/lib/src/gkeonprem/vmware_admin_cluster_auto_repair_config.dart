// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VmwareAdminClusterAutoRepairConfig {
  /// Whether auto repair is enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [VmwareAdminClusterAutoRepairConfig].
  /// [enabled] Whether auto repair is enabled.
  const VmwareAdminClusterAutoRepairConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory VmwareAdminClusterAutoRepairConfig.fromMap(Map<String, dynamic> map) {
    return VmwareAdminClusterAutoRepairConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
