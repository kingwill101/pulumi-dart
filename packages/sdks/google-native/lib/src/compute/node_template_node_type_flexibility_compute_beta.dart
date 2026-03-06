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
  const NodeTemplateNodeTypeFlexibilityComputeBeta({
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
      cpus: (() { final guardedValue = map['cpus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localSsd: (() { final guardedValue = map['localSsd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memory: (() { final guardedValue = map['memory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

