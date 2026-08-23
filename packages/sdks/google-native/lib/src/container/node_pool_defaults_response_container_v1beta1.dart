// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_config_defaults_response_container_v1beta1.dart';

/// Subset of Nodepool message that has defaults.
class NodePoolDefaultsResponseContainerV1beta1 {
  /// Subset of NodeConfig message that has defaults.
  final pulumi.Input<NodeConfigDefaultsResponseContainerV1beta1> nodeConfigDefaults;

  /// Creates a new [NodePoolDefaultsResponseContainerV1beta1].
  /// [nodeConfigDefaults] Subset of NodeConfig message that has defaults.
  const NodePoolDefaultsResponseContainerV1beta1({
    required this.nodeConfigDefaults,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeConfigDefaults': pulumi.Input.mapInputValue<NodeConfigDefaultsResponseContainerV1beta1, Map<String, dynamic>>(nodeConfigDefaults, (value) => value.toMap()),
    };
  }

  factory NodePoolDefaultsResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return NodePoolDefaultsResponseContainerV1beta1(
      nodeConfigDefaults: pulumi.Input.fromValue(NodeConfigDefaultsResponseContainerV1beta1.fromMap((map['nodeConfigDefaults']! as Map).cast<String, dynamic>())),
    );
  }
}
