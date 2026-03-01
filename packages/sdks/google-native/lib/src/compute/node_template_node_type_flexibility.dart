// ignore_for_file: unused_element, unnecessary_cast


class NodeTemplateNodeTypeFlexibility {
  final String? cpus;
  final String? localSsd;
  final String? memory;

  /// Creates a new [NodeTemplateNodeTypeFlexibility].
  /// [cpus] Optional.
  /// [localSsd] Optional.
  /// [memory] Optional.
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
      cpus: map['cpus'] == null ? null : map['cpus'] as String,
      localSsd: map['localSsd'] == null ? null : map['localSsd'] as String,
      memory: map['memory'] == null ? null : map['memory'] as String,
    );
  }
}

