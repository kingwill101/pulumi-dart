// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodeTemplateNodeTypeFlexibility {
  /// Number of virtual CPUs to use.
  final pulumi.Input<String>? cpus;
  /// (Output)
  /// Use local SSD
  final pulumi.Input<String>? localSsd;
  /// Physical memory available to the node, defined in MB.
  final pulumi.Input<String>? memory;

  /// Creates a new [NodeTemplateNodeTypeFlexibility].
  /// [cpus] Number of virtual CPUs to use.
  /// [localSsd] (Output)
  /// [memory] Physical memory available to the node, defined in MB.
  NodeTemplateNodeTypeFlexibility({
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

  factory NodeTemplateNodeTypeFlexibility.fromMap(Map<String, dynamic> map) {
    return NodeTemplateNodeTypeFlexibility(
      cpus: (() { final guardedValue = map['cpus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localSsd: (() { final guardedValue = map['localSsd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memory: (() { final guardedValue = map['memory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

