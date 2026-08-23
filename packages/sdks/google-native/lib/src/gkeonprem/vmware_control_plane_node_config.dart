// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_auto_resize_config.dart';
import 'vmware_control_plane_vsphere_config.dart';

/// Specifies control plane node config for the VMware user cluster.
class VmwareControlPlaneNodeConfig {
  /// AutoResizeConfig provides auto resizing configurations.
  final pulumi.Input<VmwareAutoResizeConfig>? autoResizeConfig;
  /// The number of CPUs for each admin cluster node that serve as control planes for this VMware user cluster. (default: 4 CPUs)
  final pulumi.Input<String>? cpus;
  /// The megabytes of memory for each admin cluster node that serves as a control plane for this VMware user cluster (default: 8192 MB memory).
  final pulumi.Input<String>? memory;
  /// The number of control plane nodes for this VMware user cluster. (default: 1 replica).
  final pulumi.Input<String>? replicas;
  /// Vsphere-specific config.
  final pulumi.Input<VmwareControlPlaneVsphereConfig>? vsphereConfig;

  /// Creates a new [VmwareControlPlaneNodeConfig].
  /// [autoResizeConfig] AutoResizeConfig provides auto resizing configurations.
  /// [cpus] The number of CPUs for each admin cluster node that serve as control planes for this VMware user cluster. (default: 4 CPUs)
  /// [memory] The megabytes of memory for each admin cluster node that serves as a control plane for this VMware user cluster (default: 8192 MB memory).
  /// [replicas] The number of control plane nodes for this VMware user cluster. (default: 1 replica).
  /// [vsphereConfig] Vsphere-specific config.
  const VmwareControlPlaneNodeConfig({
    this.autoResizeConfig,
    this.cpus,
    this.memory,
    this.replicas,
    this.vsphereConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoResizeConfig': ?pulumi.Input.mapOptionalInputValue<VmwareAutoResizeConfig, Map<String, dynamic>>(autoResizeConfig, (value) => value.toMap()),
      'cpus': ?cpus,
      'memory': ?memory,
      'replicas': ?replicas,
      'vsphereConfig': ?pulumi.Input.mapOptionalInputValue<VmwareControlPlaneVsphereConfig, Map<String, dynamic>>(vsphereConfig, (value) => value.toMap()),
    };
  }

  factory VmwareControlPlaneNodeConfig.fromMap(Map<String, dynamic> map) {
    return VmwareControlPlaneNodeConfig(
      autoResizeConfig: (() { final guardedValue = map['autoResizeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmwareAutoResizeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cpus: (() { final guardedValue = map['cpus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memory: (() { final guardedValue = map['memory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicas: (() { final guardedValue = map['replicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vsphereConfig: (() { final guardedValue = map['vsphereConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmwareControlPlaneVsphereConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
