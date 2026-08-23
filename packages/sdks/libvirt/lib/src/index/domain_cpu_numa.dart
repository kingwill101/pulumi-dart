// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_cpu_numa_cell.dart';
import 'domain_cpu_numa_interconnects.dart';

class DomainCpuNuma {
  /// Defines specific CPU NUMA cell properties, allowing for fine-tuning of resources.
  final pulumi.Input<List<DomainCpuNumaCell>>? cells;
  /// Defines the interconnects between NUMA nodes, configuring how they communicate.
  final pulumi.Input<DomainCpuNumaInterconnects>? interconnects;

  /// Creates a new [DomainCpuNuma].
  /// [cells] Defines specific CPU NUMA cell properties, allowing for fine-tuning of resources.
  /// [interconnects] Defines the interconnects between NUMA nodes, configuring how they communicate.
  const DomainCpuNuma({
    this.cells,
    this.interconnects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cells': ?pulumi.Input.mapOptionalInputValue<List<DomainCpuNumaCell>, List<Map<String, dynamic>>>(cells, (value) => pulumi.Input.encodeList<DomainCpuNumaCell, Map<String, dynamic>>(value, (value) => value.toMap())),
      'interconnects': ?pulumi.Input.mapOptionalInputValue<DomainCpuNumaInterconnects, Map<String, dynamic>>(interconnects, (value) => value.toMap()),
    };
  }

  factory DomainCpuNuma.fromMap(Map<String, dynamic> map) {
    return DomainCpuNuma(
      cells: (() { final guardedValue = map['cells']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainCpuNumaCell>(guardedValue, (value) => DomainCpuNumaCell.fromMap((value as Map).cast<String, dynamic>()))); })(),
      interconnects: (() { final guardedValue = map['interconnects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainCpuNumaInterconnects.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
