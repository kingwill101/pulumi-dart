// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_numa_tune_mem_node.dart';
import 'domain_numa_tune_memory.dart';

class DomainNumaTune {
  /// Configures the specific NUMA node settings including memory assignments and other parameters.
  final pulumi.Input<List<DomainNumaTuneMemNode>>? memNodes;
  /// Configures the total memory settings for NUMA nodes, controlling overall memory usage policy.
  final pulumi.Input<DomainNumaTuneMemory>? memory;

  /// Creates a new [DomainNumaTune].
  /// [memNodes] Configures the specific NUMA node settings including memory assignments and other parameters.
  /// [memory] Configures the total memory settings for NUMA nodes, controlling overall memory usage policy.
  DomainNumaTune({
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
      memNodes: map['memNodes'] == null ? null : (pulumi.Input.decodeList<DomainNumaTuneMemNode>(map['memNodes'], (value) => DomainNumaTuneMemNode.fromMap((value as Map).cast<String, dynamic>()))).input(),
      memory: map['memory'] == null ? null : (DomainNumaTuneMemory.fromMap((map['memory'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

