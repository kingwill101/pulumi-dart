// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainNumaTuneMemNode {
  /// Sets the cell ID for the NUMA nodes, identifying the specific physical memory locality.
  final pulumi.Input<double> cellId;
  /// Defines the allocation mode for memory on NUMA nodes, which can optimize performance based on architecture.
  final pulumi.Input<String> mode;
  /// Specifies the nodeset for memory allocation within the NUMA architecture, impacting memory distribution.
  final pulumi.Input<String> nodeset;

  /// Creates a new [DomainNumaTuneMemNode].
  /// [cellId] Sets the cell ID for the NUMA nodes, identifying the specific physical memory locality.
  /// [mode] Defines the allocation mode for memory on NUMA nodes, which can optimize performance based on architecture.
  /// [nodeset] Specifies the nodeset for memory allocation within the NUMA architecture, impacting memory distribution.
  DomainNumaTuneMemNode({
    required this.cellId,
    required this.mode,
    required this.nodeset,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cellId': cellId,
      'mode': mode,
      'nodeset': nodeset,
    };
  }

  factory DomainNumaTuneMemNode.fromMap(Map<String, dynamic> map) {
    return DomainNumaTuneMemNode(
      cellId: (map['cellId'] as double).input(),
      mode: (map['mode'] as String).input(),
      nodeset: (map['nodeset'] as String).input(),
    );
  }
}

