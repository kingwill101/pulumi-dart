// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainCpuTuneCacheTuneCach {
  /// Sets the identifier for the cache tuning configuration related to the CPUs.
  final pulumi.Input<double> id;
  /// Specifies the level of cache tuning being configured within the CPU tuning settings.
  final pulumi.Input<double> level;
  /// Configures the size of the cache allocated in the CPU tuning parameters.
  final pulumi.Input<double> size;
  /// Sets the type of cache being configured in the domain's CPU tuning settings.
  final pulumi.Input<String> type;
  /// Specifies the unit of measurement for the configured cache size in CPU tuning.
  final pulumi.Input<String> unit;

  /// Creates a new [DomainCpuTuneCacheTuneCach].
  /// [id] Sets the identifier for the cache tuning configuration related to the CPUs.
  /// [level] Specifies the level of cache tuning being configured within the CPU tuning settings.
  /// [size] Configures the size of the cache allocated in the CPU tuning parameters.
  /// [type] Sets the type of cache being configured in the domain's CPU tuning settings.
  /// [unit] Specifies the unit of measurement for the configured cache size in CPU tuning.
  const DomainCpuTuneCacheTuneCach({
    required this.id,
    required this.level,
    required this.size,
    required this.type,
    required this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'level': level,
      'size': size,
      'type': type,
      'unit': unit,
    };
  }

  factory DomainCpuTuneCacheTuneCach.fromMap(Map<String, dynamic> map) {
    return DomainCpuTuneCacheTuneCach(
      id: pulumi.Input.fromValue((map['id'] as num).toDouble()),
      level: pulumi.Input.fromValue((map['level'] as num).toDouble()),
      size: pulumi.Input.fromValue((map['size'] as num).toDouble()),
      type: pulumi.Input.fromValue(map['type'] as String),
      unit: pulumi.Input.fromValue(map['unit'] as String),
    );
  }
}
