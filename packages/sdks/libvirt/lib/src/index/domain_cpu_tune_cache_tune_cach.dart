// ignore_for_file: unused_element, unnecessary_cast


class DomainCpuTuneCacheTuneCach {
  /// Sets the identifier for the cache tuning configuration related to the CPUs.
  final double? id;
  /// Specifies the level of cache tuning being configured within the CPU tuning settings.
  final double level;
  /// Configures the size of the cache allocated in the CPU tuning parameters.
  final double size;
  /// Sets the type of cache being configured in the domain's CPU tuning settings.
  final String type;
  /// Specifies the unit of measurement for the configured cache size in CPU tuning.
  final String unit;

  /// Creates a new [DomainCpuTuneCacheTuneCach].
  /// [id] Sets the identifier for the cache tuning configuration related to the CPUs.
  /// [level] Specifies the level of cache tuning being configured within the CPU tuning settings.
  /// [size] Configures the size of the cache allocated in the CPU tuning parameters.
  /// [type] Sets the type of cache being configured in the domain's CPU tuning settings.
  /// [unit] Specifies the unit of measurement for the configured cache size in CPU tuning.
  DomainCpuTuneCacheTuneCach({
    this.id,
    required this.level,
    required this.size,
    required this.type,
    required this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'level': level,
      'size': size,
      'type': type,
      'unit': unit,
    };
  }

  factory DomainCpuTuneCacheTuneCach.fromMap(Map<String, dynamic> map) {
    return DomainCpuTuneCacheTuneCach(
      id: map['id'] == null ? null : map['id'] as double,
      level: map['level'] as double,
      size: map['size'] as double,
      type: map['type'] as String,
      unit: map['unit'] as String,
    );
  }
}

