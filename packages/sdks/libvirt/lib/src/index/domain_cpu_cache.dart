// ignore_for_file: unused_element, unnecessary_cast


class DomainCpuCache {
  /// Specifies the cache level for CPU configurations, such as L1, L2, or L3.
  final double? level;
  /// Determines the mode of operation for CPU caches, affecting how data is stored and retrieved.
  final String mode;

  /// Creates a new [DomainCpuCache].
  /// [level] Specifies the cache level for CPU configurations, such as L1, L2, or L3.
  /// [mode] Determines the mode of operation for CPU caches, affecting how data is stored and retrieved.
  DomainCpuCache({
    this.level,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'level': ?level,
      'mode': mode,
    };
  }

  factory DomainCpuCache.fromMap(Map<String, dynamic> map) {
    return DomainCpuCache(
      level: map['level'] == null ? null : map['level'] as double,
      mode: map['mode'] as String,
    );
  }
}

