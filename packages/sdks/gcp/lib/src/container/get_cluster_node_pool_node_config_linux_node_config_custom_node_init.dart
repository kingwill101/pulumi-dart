// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_pool_node_config_linux_node_config_custom_node_init_init_script.dart';

class GetClusterNodePoolNodeConfigLinuxNodeConfigCustomNodeInit {
  /// The init script configuration.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigLinuxNodeConfigCustomNodeInitInitScript>> initScripts;

  /// Creates a new [GetClusterNodePoolNodeConfigLinuxNodeConfigCustomNodeInit].
  /// [initScripts] The init script configuration.
  const GetClusterNodePoolNodeConfigLinuxNodeConfigCustomNodeInit({
    required this.initScripts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'initScripts': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigLinuxNodeConfigCustomNodeInitInitScript>, List<Map<String, dynamic>>>(initScripts, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigLinuxNodeConfigCustomNodeInitInitScript, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterNodePoolNodeConfigLinuxNodeConfigCustomNodeInit.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigLinuxNodeConfigCustomNodeInit(
      initScripts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigLinuxNodeConfigCustomNodeInitInitScript>(map['initScripts']!, (value) => GetClusterNodePoolNodeConfigLinuxNodeConfigCustomNodeInitInitScript.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
