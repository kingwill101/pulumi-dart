// ignore_for_file: unused_element, unnecessary_cast

import 'domain_cpu_numa_cell_cach_line.dart';
import 'domain_cpu_numa_cell_cach_size.dart';

class DomainCpuNumaCellCach {
  /// Configures the number of ways in which cache lines can be mapped into the cache.
  final String associativity;
  /// Sets the cache level in the cache hierarchy, indicating whether it is L1, L2, L3, etc.
  final double level;
  /// Specifies the cache line size which dictates how much data is fetched from memory in one cache transaction.
  final DomainCpuNumaCellCachLine? line;
  /// Specifies the cache management policy that dictates how cache entries are allocated and evicted.
  final String policy;
  /// Configures the total size of the cache, determining its capacity for storing cache lines.
  final DomainCpuNumaCellCachSize? size;

  /// Creates a new [DomainCpuNumaCellCach].
  /// [associativity] Configures the number of ways in which cache lines can be mapped into the cache.
  /// [level] Sets the cache level in the cache hierarchy, indicating whether it is L1, L2, L3, etc.
  /// [line] Specifies the cache line size which dictates how much data is fetched from memory in one cache transaction.
  /// [policy] Specifies the cache management policy that dictates how cache entries are allocated and evicted.
  /// [size] Configures the total size of the cache, determining its capacity for storing cache lines.
  DomainCpuNumaCellCach({
    required this.associativity,
    required this.level,
    this.line,
    required this.policy,
    this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associativity': associativity,
      'level': level,
      'line': ?line == null ? null : line!.toMap(),
      'policy': policy,
      'size': ?size == null ? null : size!.toMap(),
    };
  }

  factory DomainCpuNumaCellCach.fromMap(Map<String, dynamic> map) {
    return DomainCpuNumaCellCach(
      associativity: map['associativity'] as String,
      level: map['level'] as double,
      line: map['line'] == null ? null : DomainCpuNumaCellCachLine.fromMap((map['line'] as Map).cast<String, dynamic>()),
      policy: map['policy'] as String,
      size: map['size'] == null ? null : DomainCpuNumaCellCachSize.fromMap((map['size'] as Map).cast<String, dynamic>()),
    );
  }
}

