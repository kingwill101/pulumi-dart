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
  const DomainCpuNumaCellCach({
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
      associativity: pulumi.Input.fromValue(map['associativity'] as String),
      level: pulumi.Input.fromValue(map['level'] as double),
      line: (() { final guardedValue = map['line']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainCpuNumaCellCachLine.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      policy: pulumi.Input.fromValue(map['policy'] as String),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainCpuNumaCellCachSize.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

