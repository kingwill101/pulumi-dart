// ignore_for_file: unused_element, unnecessary_cast


class ClusterNodeTypeApplicationPorts {
  /// The end of the Application Port Range on this Node Type.
  final int endPort;
  /// The start of the Application Port Range on this Node Type.
  final int startPort;

  /// Creates a new [ClusterNodeTypeApplicationPorts].
  /// [endPort] The end of the Application Port Range on this Node Type.
  /// [startPort] The start of the Application Port Range on this Node Type.
  ClusterNodeTypeApplicationPorts({
    required this.endPort,
    required this.startPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endPort': endPort,
      'startPort': startPort,
    };
  }

  factory ClusterNodeTypeApplicationPorts.fromMap(Map<String, dynamic> map) {
    return ClusterNodeTypeApplicationPorts(
      endPort: map['endPort'] as int,
      startPort: map['startPort'] as int,
    );
  }
}

