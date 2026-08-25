// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_pool_node_config_linux_node_config_custom_node_init_init_script.dart';

class NodePoolNodeConfigLinuxNodeConfigCustomNodeInit {
  /// The init script configuration.
  final pulumi.Input<NodePoolNodeConfigLinuxNodeConfigCustomNodeInitInitScript?>? initScript;

  /// Creates a new [NodePoolNodeConfigLinuxNodeConfigCustomNodeInit].
  /// [initScript] The init script configuration.
  const NodePoolNodeConfigLinuxNodeConfigCustomNodeInit({
    this.initScript,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'initScript': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigLinuxNodeConfigCustomNodeInitInitScript, Map<String, dynamic>>(initScript, (value) => value.toMap()),
    };
  }

  factory NodePoolNodeConfigLinuxNodeConfigCustomNodeInit.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigLinuxNodeConfigCustomNodeInit(
      initScript: (() { final guardedValue = map['initScript']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolNodeConfigLinuxNodeConfigCustomNodeInitInitScript.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
