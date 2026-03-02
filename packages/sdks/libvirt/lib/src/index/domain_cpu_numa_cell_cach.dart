// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_cpu_numa_cell_cach_line.dart';
import 'domain_cpu_numa_cell_cach_size.dart';

class DomainCpuNumaCellCach {
  /// Configures the number of ways in which cache lines can be mapped into the cache.
  final pulumi.Input<String> associativity;
  /// Sets the cache level in the cache hierarchy, indicating whether it is L1, L2, L3, etc.
  final pulumi.Input<double> level;
  /// Specifies the cache line size which dictates how much data is fetched from memory in one cache transaction.
  final pulumi.Input<DomainCpuNumaCellCachLine>? line;
  /// Specifies the cache management policy that dictates how cache entries are allocated and evicted.
  final pulumi.Input<String> policy;
  /// Configures the total size of the cache, determining its capacity for storing cache lines.
  final pulumi.Input<DomainCpuNumaCellCachSize>? size;

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
      'line': ?pulumi.Input.mapOptionalInputValue<DomainCpuNumaCellCachLine, Map<String, dynamic>>(line, (value) => value.toMap()),
      'policy': policy,
      'size': ?pulumi.Input.mapOptionalInputValue<DomainCpuNumaCellCachSize, Map<String, dynamic>>(size, (value) => value.toMap()),
    };
  }

  factory DomainCpuNumaCellCach.fromMap(Map<String, dynamic> map) {
    return DomainCpuNumaCellCach(
      associativity: (map['associativity'] as String).input(),
      level: (map['level'] as double).input(),
      line: map['line'] == null ? null : (DomainCpuNumaCellCachLine.fromMap((map['line']! as Map).cast<String, dynamic>())).input(),
      policy: (map['policy'] as String).input(),
      size: map['size'] == null ? null : (DomainCpuNumaCellCachSize.fromMap((map['size']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

