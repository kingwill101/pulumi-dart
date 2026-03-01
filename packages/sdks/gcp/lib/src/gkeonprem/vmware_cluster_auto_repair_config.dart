// ignore_for_file: unused_element, unnecessary_cast


class VMwareClusterAutoRepairConfig {
  /// Whether auto repair is enabled.
  final bool enabled;

  /// Creates a new [VMwareClusterAutoRepairConfig].
  /// [enabled] Whether auto repair is enabled.
  VMwareClusterAutoRepairConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory VMwareClusterAutoRepairConfig.fromMap(Map<String, dynamic> map) {
    return VMwareClusterAutoRepairConfig(
      enabled: map['enabled'] as bool,
    );
  }
}

