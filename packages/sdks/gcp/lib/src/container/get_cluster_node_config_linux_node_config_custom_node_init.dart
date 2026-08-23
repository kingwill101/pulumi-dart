// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_config_linux_node_config_custom_node_init_init_script.dart';

class GetClusterNodeConfigLinuxNodeConfigCustomNodeInit {
  /// The init script configuration.
  final pulumi.Input<List<GetClusterNodeConfigLinuxNodeConfigCustomNodeInitInitScript>> initScripts;

  /// Creates a new [GetClusterNodeConfigLinuxNodeConfigCustomNodeInit].
  /// [initScripts] The init script configuration.
  const GetClusterNodeConfigLinuxNodeConfigCustomNodeInit({
    required this.initScripts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'initScripts': pulumi.Input.mapInputValue<List<GetClusterNodeConfigLinuxNodeConfigCustomNodeInitInitScript>, List<Map<String, dynamic>>>(initScripts, (value) => pulumi.Input.encodeList<GetClusterNodeConfigLinuxNodeConfigCustomNodeInitInitScript, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterNodeConfigLinuxNodeConfigCustomNodeInit.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigLinuxNodeConfigCustomNodeInit(
      initScripts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodeConfigLinuxNodeConfigCustomNodeInitInitScript>(map['initScripts']!, (value) => GetClusterNodeConfigLinuxNodeConfigCustomNodeInitInitScript.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
