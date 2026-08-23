// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VMwareClusterAutoRepairConfig {
  /// Whether auto repair is enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [VMwareClusterAutoRepairConfig].
  /// [enabled] Whether auto repair is enabled.
  const VMwareClusterAutoRepairConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory VMwareClusterAutoRepairConfig.fromMap(Map<String, dynamic> map) {
    return VMwareClusterAutoRepairConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
