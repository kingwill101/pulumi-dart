// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_config_defaults_response.dart';

/// Subset of Nodepool message that has defaults.
class NodePoolDefaultsResponse {
  /// Subset of NodeConfig message that has defaults.
  final pulumi.Input<NodeConfigDefaultsResponse> nodeConfigDefaults;

  /// Creates a new [NodePoolDefaultsResponse].
  /// [nodeConfigDefaults] Subset of NodeConfig message that has defaults.
  NodePoolDefaultsResponse({required this.nodeConfigDefaults});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeConfigDefaults':
          pulumi.Input.mapInputValue<
            NodeConfigDefaultsResponse,
            Map<String, dynamic>
          >(nodeConfigDefaults, (value) => value.toMap()),
    };
  }

  factory NodePoolDefaultsResponse.fromMap(Map<String, dynamic> map) {
    return NodePoolDefaultsResponse(
      nodeConfigDefaults: pulumi.Input.fromValue(
        NodeConfigDefaultsResponse.fromMap(
          (map['nodeConfigDefaults']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
