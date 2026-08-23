// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_config_linux_node_config_custom_node_init_init_script.dart';

class ClusterNodeConfigLinuxNodeConfigCustomNodeInit {
  /// The init script configuration. Structure is documented below.
  final pulumi.Input<ClusterNodeConfigLinuxNodeConfigCustomNodeInitInitScript>? initScript;

  /// Creates a new [ClusterNodeConfigLinuxNodeConfigCustomNodeInit].
  /// [initScript] The init script configuration. Structure is documented below.
  const ClusterNodeConfigLinuxNodeConfigCustomNodeInit({
    this.initScript,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'initScript': ?pulumi.Input.mapOptionalInputValue<ClusterNodeConfigLinuxNodeConfigCustomNodeInitInitScript, Map<String, dynamic>>(initScript, (value) => value.toMap()),
    };
  }

  factory ClusterNodeConfigLinuxNodeConfigCustomNodeInit.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigLinuxNodeConfigCustomNodeInit(
      initScript: (() { final guardedValue = map['initScript']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodeConfigLinuxNodeConfigCustomNodeInitInitScript.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
