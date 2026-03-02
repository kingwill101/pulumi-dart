// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodeTemplateNodeTypeFlexibilityComputeV1 {
  final pulumi.Input<String>? cpus;
  final pulumi.Input<String>? localSsd;
  final pulumi.Input<String>? memory;

  /// Creates a new [NodeTemplateNodeTypeFlexibilityComputeV1].
  /// [cpus] Optional.
  /// [localSsd] Optional.
  /// [memory] Optional.
  NodeTemplateNodeTypeFlexibilityComputeV1({
    this.cpus,
    this.localSsd,
    this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpus': ?cpus,
      'localSsd': ?localSsd,
      'memory': ?memory,
    };
  }

  factory NodeTemplateNodeTypeFlexibilityComputeV1.fromMap(Map<String, dynamic> map) {
    return NodeTemplateNodeTypeFlexibilityComputeV1(
      cpus: map['cpus'] == null ? null : (map['cpus'] as String).input(),
      localSsd: map['localSsd'] == null ? null : (map['localSsd'] as String).input(),
      memory: map['memory'] == null ? null : (map['memory'] as String).input(),
    );
  }
}

