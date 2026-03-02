// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_cpu_numa_cell_distances_sibling.dart';

class DomainCpuNumaCellDistances {
  /// Describes the sibling CPUs within the NUMA cell, defining distance metrics for optimized access.
  final pulumi.Input<List<DomainCpuNumaCellDistancesSibling>>? siblings;

  /// Creates a new [DomainCpuNumaCellDistances].
  /// [siblings] Describes the sibling CPUs within the NUMA cell, defining distance metrics for optimized access.
  DomainCpuNumaCellDistances({
    this.siblings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'siblings': ?pulumi.Input.mapOptionalInputValue<List<DomainCpuNumaCellDistancesSibling>, List<Map<String, dynamic>>>(siblings, (value) => pulumi.Input.encodeList<DomainCpuNumaCellDistancesSibling, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainCpuNumaCellDistances.fromMap(Map<String, dynamic> map) {
    return DomainCpuNumaCellDistances(
      siblings: map['siblings'] == null ? null : (pulumi.Input.decodeList<DomainCpuNumaCellDistancesSibling>(map['siblings']!, (value) => DomainCpuNumaCellDistancesSibling.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

