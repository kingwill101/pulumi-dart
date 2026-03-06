// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_pool_defaults_node_config_defaults.dart';

class ClusterNodePoolDefaults {
  /// Subset of NodeConfig message that has defaults.
  final pulumi.Input<ClusterNodePoolDefaultsNodeConfigDefaults>? nodeConfigDefaults;

  /// Creates a new [ClusterNodePoolDefaults].
  /// [nodeConfigDefaults] Subset of NodeConfig message that has defaults.
  const ClusterNodePoolDefaults({
    this.nodeConfigDefaults,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeConfigDefaults': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolDefaultsNodeConfigDefaults, Map<String, dynamic>>(nodeConfigDefaults, (value) => value.toMap()),
    };
  }

  factory ClusterNodePoolDefaults.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolDefaults(
      nodeConfigDefaults: (() { final guardedValue = map['nodeConfigDefaults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodePoolDefaultsNodeConfigDefaults.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

