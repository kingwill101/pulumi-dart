// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodeCreationConfig {
  /// NodeCreationMode defines the settings of node creation mode.
  /// Accepted values are:
  /// * VIA_KUBELET: Kubelet registers itself.
  /// * VIA_CONTROL_PLANE: gcp-controller-manager automatically creates the node object after CSR approval.
  final pulumi.Input<String> nodeCreationMode;

  /// Creates a new [GetClusterNodeCreationConfig].
  /// [nodeCreationMode] NodeCreationMode defines the settings of node creation mode.
  const GetClusterNodeCreationConfig({
    required this.nodeCreationMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeCreationMode': nodeCreationMode,
    };
  }

  factory GetClusterNodeCreationConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeCreationConfig(
      nodeCreationMode: pulumi.Input.fromValue(map['nodeCreationMode'] as String),
    );
  }
}
