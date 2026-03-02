// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_config_defaults.dart';

/// Subset of Nodepool message that has defaults.
class NodePoolDefaults {
  /// Subset of NodeConfig message that has defaults.
  final pulumi.Input<NodeConfigDefaults>? nodeConfigDefaults;

  /// Creates a new [NodePoolDefaults].
  /// [nodeConfigDefaults] Subset of NodeConfig message that has defaults.
  NodePoolDefaults({
    this.nodeConfigDefaults,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeConfigDefaults': ?pulumi.Input.mapOptionalInputValue<NodeConfigDefaults, Map<String, dynamic>>(nodeConfigDefaults, (value) => value.toMap()),
    };
  }

  factory NodePoolDefaults.fromMap(Map<String, dynamic> map) {
    return NodePoolDefaults(
      nodeConfigDefaults: map['nodeConfigDefaults'] == null ? null : (NodeConfigDefaults.fromMap((map['nodeConfigDefaults'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

