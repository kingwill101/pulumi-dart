// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainCpuCache {
  /// Specifies the cache level for CPU configurations, such as L1, L2, or L3.
  final pulumi.Input<double>? level;
  /// Determines the mode of operation for CPU caches, affecting how data is stored and retrieved.
  final pulumi.Input<String> mode;

  /// Creates a new [DomainCpuCache].
  /// [level] Specifies the cache level for CPU configurations, such as L1, L2, or L3.
  /// [mode] Determines the mode of operation for CPU caches, affecting how data is stored and retrieved.
  const DomainCpuCache({
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
      level: (() { final guardedValue = map['level']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}

