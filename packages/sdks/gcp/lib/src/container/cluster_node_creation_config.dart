// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodeCreationConfig {
  /// Sets the node creation mode. Available options include `VIA_KUBELET` and `VIA_CONTROL_PLANE`.
  final pulumi.Input<String> nodeCreationMode;

  /// Creates a new [ClusterNodeCreationConfig].
  /// [nodeCreationMode] Sets the node creation mode. Available options include `VIA_KUBELET` and `VIA_CONTROL_PLANE`.
  const ClusterNodeCreationConfig({
    required this.nodeCreationMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeCreationMode': nodeCreationMode,
    };
  }

  factory ClusterNodeCreationConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodeCreationConfig(
      nodeCreationMode: pulumi.Input.fromValue(map['nodeCreationMode'] as String),
    );
  }
}
