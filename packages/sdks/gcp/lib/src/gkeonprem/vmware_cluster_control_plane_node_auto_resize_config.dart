// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VMwareClusterControlPlaneNodeAutoResizeConfig {
  /// Whether to enable control plane node auto resizing.
  ///
  /// &lt;a name="nested_control_plane_node_vsphere_config"&gt;&lt;/a&gt;The `vsphere_config` block contains:
  final pulumi.Input<bool> enabled;

  /// Creates a new [VMwareClusterControlPlaneNodeAutoResizeConfig].
  /// [enabled] Whether to enable control plane node auto resizing.
  VMwareClusterControlPlaneNodeAutoResizeConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory VMwareClusterControlPlaneNodeAutoResizeConfig.fromMap(Map<String, dynamic> map) {
    return VMwareClusterControlPlaneNodeAutoResizeConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

