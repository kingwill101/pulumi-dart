// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodeTemplateNodeTypeFlexibilityComputeBeta {
  final pulumi.Input<String>? cpus;
  final pulumi.Input<String>? localSsd;
  final pulumi.Input<String>? memory;

  /// Creates a new [NodeTemplateNodeTypeFlexibilityComputeBeta].
  /// [cpus] Optional.
  /// [localSsd] Optional.
  /// [memory] Optional.
  NodeTemplateNodeTypeFlexibilityComputeBeta({
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

  factory NodeTemplateNodeTypeFlexibilityComputeBeta.fromMap(Map<String, dynamic> map) {
    return NodeTemplateNodeTypeFlexibilityComputeBeta(
      cpus: map['cpus'] == null ? null : (map['cpus']! as String).input(),
      localSsd: map['localSsd'] == null ? null : (map['localSsd']! as String).input(),
      memory: map['memory'] == null ? null : (map['memory']! as String).input(),
    );
  }
}

