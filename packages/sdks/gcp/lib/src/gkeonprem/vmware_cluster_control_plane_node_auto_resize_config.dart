// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VMwareClusterControlPlaneNodeAutoResizeConfig {
  /// Whether to enable control plane node auto resizing.
  ///
  /// <a name="nested_control_plane_node_vsphere_config"></a>The `vsphere_config` block contains:
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
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

