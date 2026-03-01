// ignore_for_file: unused_element, unnecessary_cast


class ClusterNodeTypeEphemeralPorts {
  /// The end of the Ephemeral Port Range on this Node Type.
  final int endPort;
  /// The start of the Ephemeral Port Range on this Node Type.
  final int startPort;

  /// Creates a new [ClusterNodeTypeEphemeralPorts].
  /// [endPort] The end of the Ephemeral Port Range on this Node Type.
  /// [startPort] The start of the Ephemeral Port Range on this Node Type.
  ClusterNodeTypeEphemeralPorts({
    required this.endPort,
    required this.startPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endPort': endPort,
      'startPort': startPort,
    };
  }

  factory ClusterNodeTypeEphemeralPorts.fromMap(Map<String, dynamic> map) {
    return ClusterNodeTypeEphemeralPorts(
      endPort: map['endPort'] as int,
      startPort: map['startPort'] as int,
    );
  }
}

