// ignore_for_file: unused_element, unnecessary_cast

import 'vmware_auto_resize_config_response.dart';
import 'vmware_control_plane_vsphere_config_response.dart';

/// Specifies control plane node config for the VMware user cluster.
class VmwareControlPlaneNodeConfigResponse {
  /// AutoResizeConfig provides auto resizing configurations.
  final VmwareAutoResizeConfigResponse autoResizeConfig;
  /// The number of CPUs for each admin cluster node that serve as control planes for this VMware user cluster. (default: 4 CPUs)
  final String cpus;
  /// The megabytes of memory for each admin cluster node that serves as a control plane for this VMware user cluster (default: 8192 MB memory).
  final String memory;
  /// The number of control plane nodes for this VMware user cluster. (default: 1 replica).
  final String replicas;
  /// Vsphere-specific config.
  final VmwareControlPlaneVsphereConfigResponse vsphereConfig;

  /// Creates a new [VmwareControlPlaneNodeConfigResponse].
  /// [autoResizeConfig] AutoResizeConfig provides auto resizing configurations.
  /// [cpus] The number of CPUs for each admin cluster node that serve as control planes for this VMware user cluster. (default: 4 CPUs)
  /// [memory] The megabytes of memory for each admin cluster node that serves as a control plane for this VMware user cluster (default: 8192 MB memory).
  /// [replicas] The number of control plane nodes for this VMware user cluster. (default: 1 replica).
  /// [vsphereConfig] Vsphere-specific config.
  VmwareControlPlaneNodeConfigResponse({
    required this.autoResizeConfig,
    required this.cpus,
    required this.memory,
    required this.replicas,
    required this.vsphereConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoResizeConfig': autoResizeConfig.toMap(),
      'cpus': cpus,
      'memory': memory,
      'replicas': replicas,
      'vsphereConfig': vsphereConfig.toMap(),
    };
  }

  factory VmwareControlPlaneNodeConfigResponse.fromMap(Map<String, dynamic> map) {
    return VmwareControlPlaneNodeConfigResponse(
      autoResizeConfig: VmwareAutoResizeConfigResponse.fromMap((map['autoResizeConfig'] as Map).cast<String, dynamic>()),
      cpus: map['cpus'] as String,
      memory: map['memory'] as String,
      replicas: map['replicas'] as String,
      vsphereConfig: VmwareControlPlaneVsphereConfigResponse.fromMap((map['vsphereConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

