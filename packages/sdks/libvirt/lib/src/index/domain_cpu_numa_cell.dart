// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_cpu_numa_cell_cach.dart';
import 'domain_cpu_numa_cell_distances.dart';

class DomainCpuNumaCell {
  /// Configures cache settings for each NUMA cell, affecting memory access performance.
  final pulumi.Input<List<DomainCpuNumaCellCach>>? caches;
  /// Specifies the CPUs assigned to the NUMA cell, mapping physical resources to the virtual domain.
  final pulumi.Input<String>? cpus;
  /// Indicates whether memory allocations in this NUMA cell can be discarded or reclaimed.
  final pulumi.Input<String>? discard;
  /// Outlines the distance metrics between CPUs in the NUMA cell and other cells, affecting performance.
  final pulumi.Input<DomainCpuNumaCellDistances>? distances;
  /// Identifies the unique ID for the NUMA cell, helping manage resource allocation.
  final pulumi.Input<double>? id;
  /// Configures the memory access attributes related to the NUMA cell, defining access strategies.
  final pulumi.Input<String>? memAccess;
  /// Specifies the total allocated memory for the NUMA cell, influencing resource management.
  final pulumi.Input<double> memory;
  /// Sets the unit of measure used for memory associated with the NUMA cell.
  final pulumi.Input<String>? unit;

  /// Creates a new [DomainCpuNumaCell].
  /// [caches] Configures cache settings for each NUMA cell, affecting memory access performance.
  /// [cpus] Specifies the CPUs assigned to the NUMA cell, mapping physical resources to the virtual domain.
  /// [discard] Indicates whether memory allocations in this NUMA cell can be discarded or reclaimed.
  /// [distances] Outlines the distance metrics between CPUs in the NUMA cell and other cells, affecting performance.
  /// [id] Identifies the unique ID for the NUMA cell, helping manage resource allocation.
  /// [memAccess] Configures the memory access attributes related to the NUMA cell, defining access strategies.
  /// [memory] Specifies the total allocated memory for the NUMA cell, influencing resource management.
  /// [unit] Sets the unit of measure used for memory associated with the NUMA cell.
  DomainCpuNumaCell({
    this.caches,
    this.cpus,
    this.discard,
    this.distances,
    this.id,
    this.memAccess,
    required this.memory,
    this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caches': ?pulumi.Input.mapOptionalInputValue<List<DomainCpuNumaCellCach>, List<Map<String, dynamic>>>(caches, (value) => pulumi.Input.encodeList<DomainCpuNumaCellCach, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cpus': ?cpus,
      'discard': ?discard,
      'distances': ?pulumi.Input.mapOptionalInputValue<DomainCpuNumaCellDistances, Map<String, dynamic>>(distances, (value) => value.toMap()),
      'id': ?id,
      'memAccess': ?memAccess,
      'memory': memory,
      'unit': ?unit,
    };
  }

  factory DomainCpuNumaCell.fromMap(Map<String, dynamic> map) {
    return DomainCpuNumaCell(
      caches: map['caches'] == null ? null : (pulumi.Input.decodeList<DomainCpuNumaCellCach>(map['caches']!, (value) => DomainCpuNumaCellCach.fromMap((value as Map).cast<String, dynamic>()))).input(),
      cpus: map['cpus'] == null ? null : (map['cpus']! as String).input(),
      discard: map['discard'] == null ? null : (map['discard']! as String).input(),
      distances: map['distances'] == null ? null : (DomainCpuNumaCellDistances.fromMap((map['distances']! as Map).cast<String, dynamic>())).input(),
      id: map['id'] == null ? null : (map['id']! as double).input(),
      memAccess: map['memAccess'] == null ? null : (map['memAccess']! as String).input(),
      memory: (map['memory'] as double).input(),
      unit: map['unit'] == null ? null : (map['unit']! as String).input(),
    );
  }
}

