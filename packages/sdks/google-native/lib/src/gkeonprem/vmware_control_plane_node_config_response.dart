// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_auto_resize_config_response.dart';
import 'vmware_control_plane_vsphere_config_response.dart';

/// Specifies control plane node config for the VMware user cluster.
class VmwareControlPlaneNodeConfigResponse {
  /// AutoResizeConfig provides auto resizing configurations.
  final pulumi.Input<VmwareAutoResizeConfigResponse> autoResizeConfig;

  /// The number of CPUs for each admin cluster node that serve as control planes for this VMware user cluster. (default: 4 CPUs)
  final pulumi.Input<String> cpus;

  /// The megabytes of memory for each admin cluster node that serves as a control plane for this VMware user cluster (default: 8192 MB memory).
  final pulumi.Input<String> memory;

  /// The number of control plane nodes for this VMware user cluster. (default: 1 replica).
  final pulumi.Input<String> replicas;

  /// Vsphere-specific config.
  final pulumi.Input<VmwareControlPlaneVsphereConfigResponse> vsphereConfig;

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
      'autoResizeConfig':
          pulumi.Input.mapInputValue<
            VmwareAutoResizeConfigResponse,
            Map<String, dynamic>
          >(autoResizeConfig, (value) => value.toMap()),
      'cpus': cpus,
      'memory': memory,
      'replicas': replicas,
      'vsphereConfig':
          pulumi.Input.mapInputValue<
            VmwareControlPlaneVsphereConfigResponse,
            Map<String, dynamic>
          >(vsphereConfig, (value) => value.toMap()),
    };
  }

  factory VmwareControlPlaneNodeConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return VmwareControlPlaneNodeConfigResponse(
      autoResizeConfig: pulumi.Input.fromValue(
        VmwareAutoResizeConfigResponse.fromMap(
          (map['autoResizeConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      cpus: pulumi.Input.fromValue(map['cpus'] as String),
      memory: pulumi.Input.fromValue(map['memory'] as String),
      replicas: pulumi.Input.fromValue(map['replicas'] as String),
      vsphereConfig: pulumi.Input.fromValue(
        VmwareControlPlaneVsphereConfigResponse.fromMap(
          (map['vsphereConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
