// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_numa_tune_mem_node.dart';
import 'domain_numa_tune_memory.dart';

class DomainNumaTune {
  /// Configures the specific NUMA node settings including memory assignments and other parameters.
  final pulumi.Input<List<DomainNumaTuneMemNode>?>? memNodes;
  /// Configures the total memory settings for NUMA nodes, controlling overall memory usage policy.
  final pulumi.Input<DomainNumaTuneMemory?>? memory;

  /// Creates a new [DomainNumaTune].
  /// [memNodes] Configures the specific NUMA node settings including memory assignments and other parameters.
  /// [memory] Configures the total memory settings for NUMA nodes, controlling overall memory usage policy.
  const DomainNumaTune({
    this.memNodes,
    this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'memNodes': ?pulumi.Input.mapOptionalInputValue<List<DomainNumaTuneMemNode>, List<Map<String, dynamic>>>(memNodes, (value) => pulumi.Input.encodeList<DomainNumaTuneMemNode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'memory': ?pulumi.Input.mapOptionalInputValue<DomainNumaTuneMemory, Map<String, dynamic>>(memory, (value) => value.toMap()),
    };
  }

  factory DomainNumaTune.fromMap(Map<String, dynamic> map) {
    return DomainNumaTune(
      memNodes: (() { final guardedValue = map['memNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainNumaTuneMemNode>(guardedValue, (value) => DomainNumaTuneMemNode.fromMap((value as Map).cast<String, dynamic>()))); })(),
      memory: (() { final guardedValue = map['memory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainNumaTuneMemory.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
