// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodeTemplateNodeTypeFlexibilityResponseComputeV1 {
  final pulumi.Input<String> cpus;
  final pulumi.Input<String> localSsd;
  final pulumi.Input<String> memory;

  /// Creates a new [NodeTemplateNodeTypeFlexibilityResponseComputeV1].
  /// [cpus] Required.
  /// [localSsd] Required.
  /// [memory] Required.
  NodeTemplateNodeTypeFlexibilityResponseComputeV1({
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

  factory NodeTemplateNodeTypeFlexibilityResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return NodeTemplateNodeTypeFlexibilityResponseComputeV1(
      cpus: (map['cpus'] as String).input(),
      localSsd: (map['localSsd'] as String).input(),
      memory: (map['memory'] as String).input(),
    );
  }
}

