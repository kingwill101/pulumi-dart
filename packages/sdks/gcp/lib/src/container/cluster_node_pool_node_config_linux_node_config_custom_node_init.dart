// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_pool_node_config_linux_node_config_custom_node_init_init_script.dart';

class ClusterNodePoolNodeConfigLinuxNodeConfigCustomNodeInit {
  /// The init script configuration. Structure is documented below.
  final pulumi.Input<ClusterNodePoolNodeConfigLinuxNodeConfigCustomNodeInitInitScript>? initScript;

  /// Creates a new [ClusterNodePoolNodeConfigLinuxNodeConfigCustomNodeInit].
  /// [initScript] The init script configuration. Structure is documented below.
  const ClusterNodePoolNodeConfigLinuxNodeConfigCustomNodeInit({
    this.initScript,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'initScript': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolNodeConfigLinuxNodeConfigCustomNodeInitInitScript, Map<String, dynamic>>(initScript, (value) => value.toMap()),
    };
  }

  factory ClusterNodePoolNodeConfigLinuxNodeConfigCustomNodeInit.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigLinuxNodeConfigCustomNodeInit(
      initScript: (() { final guardedValue = map['initScript']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodePoolNodeConfigLinuxNodeConfigCustomNodeInitInitScript.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
