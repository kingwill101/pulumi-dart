// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodeTypeEphemeralPorts {
  /// The end of the Ephemeral Port Range on this Node Type.
  final pulumi.Input<int> endPort;
  /// The start of the Ephemeral Port Range on this Node Type.
  final pulumi.Input<int> startPort;

  /// Creates a new [ClusterNodeTypeEphemeralPorts].
  /// [endPort] The end of the Ephemeral Port Range on this Node Type.
  /// [startPort] The start of the Ephemeral Port Range on this Node Type.
  const ClusterNodeTypeEphemeralPorts({
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
      endPort: pulumi.Input.fromValue(map['endPort'] as int),
      startPort: pulumi.Input.fromValue(map['startPort'] as int),
    );
  }
}

