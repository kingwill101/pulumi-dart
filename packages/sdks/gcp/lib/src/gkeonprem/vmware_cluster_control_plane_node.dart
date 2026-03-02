// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_cluster_control_plane_node_auto_resize_config.dart';
import 'vmware_cluster_control_plane_node_vsphere_config.dart';

class VMwareClusterControlPlaneNode {
  /// AutoResizeConfig provides auto resizing configurations.
  /// Structure is documented below.
  final pulumi.Input<VMwareClusterControlPlaneNodeAutoResizeConfig>? autoResizeConfig;
  /// The number of CPUs for each admin cluster node that serve as control planes
  /// for this VMware User Cluster. (default: 4 CPUs)
  final pulumi.Input<int>? cpus;
  /// The megabytes of memory for each admin cluster node that serves as a
  /// control plane for this VMware User Cluster (default: 8192 MB memory).
  final pulumi.Input<int>? memory;
  /// The number of control plane nodes for this VMware User Cluster.
  /// (default: 1 replica).
  final pulumi.Input<int>? replicas;
  /// (Output)
  /// Vsphere-specific config.
  /// Structure is documented below.
  final pulumi.Input<List<VMwareClusterControlPlaneNodeVsphereConfig>>? vsphereConfigs;

  /// Creates a new [VMwareClusterControlPlaneNode].
  /// [autoResizeConfig] AutoResizeConfig provides auto resizing configurations.
  /// [cpus] The number of CPUs for each admin cluster node that serve as control planes
  /// [memory] The megabytes of memory for each admin cluster node that serves as a
  /// [replicas] The number of control plane nodes for this VMware User Cluster.
  /// [vsphereConfigs] (Output)
  VMwareClusterControlPlaneNode({
    this.autoResizeConfig,
    this.cpus,
    this.memory,
    this.replicas,
    this.vsphereConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoResizeConfig': ?pulumi.Input.mapOptionalInputValue<VMwareClusterControlPlaneNodeAutoResizeConfig, Map<String, dynamic>>(autoResizeConfig, (value) => value.toMap()),
      'cpus': ?cpus,
      'memory': ?memory,
      'replicas': ?replicas,
      'vsphereConfigs': ?pulumi.Input.mapOptionalInputValue<List<VMwareClusterControlPlaneNodeVsphereConfig>, List<Map<String, dynamic>>>(vsphereConfigs, (value) => pulumi.Input.encodeList<VMwareClusterControlPlaneNodeVsphereConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VMwareClusterControlPlaneNode.fromMap(Map<String, dynamic> map) {
    return VMwareClusterControlPlaneNode(
      autoResizeConfig: map['autoResizeConfig'] == null ? null : (VMwareClusterControlPlaneNodeAutoResizeConfig.fromMap((map['autoResizeConfig']! as Map).cast<String, dynamic>())).input(),
      cpus: map['cpus'] == null ? null : (map['cpus']! as int).input(),
      memory: map['memory'] == null ? null : (map['memory']! as int).input(),
      replicas: map['replicas'] == null ? null : (map['replicas']! as int).input(),
      vsphereConfigs: map['vsphereConfigs'] == null ? null : (pulumi.Input.decodeList<VMwareClusterControlPlaneNodeVsphereConfig>(map['vsphereConfigs']!, (value) => VMwareClusterControlPlaneNodeVsphereConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

