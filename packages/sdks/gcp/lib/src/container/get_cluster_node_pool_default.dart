// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_pool_default_node_config_default.dart';

class GetClusterNodePoolDefault {
  /// Subset of NodeConfig message that has defaults.
  final pulumi.Input<List<GetClusterNodePoolDefaultNodeConfigDefault>> nodeConfigDefaults;

  /// Creates a new [GetClusterNodePoolDefault].
  /// [nodeConfigDefaults] Subset of NodeConfig message that has defaults.
  const GetClusterNodePoolDefault({
    required this.nodeConfigDefaults,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeConfigDefaults': pulumi.Input.mapInputValue<List<GetClusterNodePoolDefaultNodeConfigDefault>, List<Map<String, dynamic>>>(nodeConfigDefaults, (value) => pulumi.Input.encodeList<GetClusterNodePoolDefaultNodeConfigDefault, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterNodePoolDefault.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolDefault(
      nodeConfigDefaults: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolDefaultNodeConfigDefault>(map['nodeConfigDefaults']!, (value) => GetClusterNodePoolDefaultNodeConfigDefault.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

