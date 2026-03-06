// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodeTemplateNodeTypeFlexibilityResponseComputeBeta {
  final pulumi.Input<String> cpus;
  final pulumi.Input<String> localSsd;
  final pulumi.Input<String> memory;

  /// Creates a new [NodeTemplateNodeTypeFlexibilityResponseComputeBeta].
  /// [cpus] Required.
  /// [localSsd] Required.
  /// [memory] Required.
  const NodeTemplateNodeTypeFlexibilityResponseComputeBeta({
    required this.cpus,
    required this.localSsd,
    required this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpus': cpus,
      'localSsd': localSsd,
      'memory': memory,
    };
  }

  factory NodeTemplateNodeTypeFlexibilityResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return NodeTemplateNodeTypeFlexibilityResponseComputeBeta(
      cpus: pulumi.Input.fromValue(map['cpus'] as String),
      localSsd: pulumi.Input.fromValue(map['localSsd'] as String),
      memory: pulumi.Input.fromValue(map['memory'] as String),
    );
  }
}

