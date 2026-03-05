// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_node_pool_config_taint.dart';
import 'vmware_node_pool_config_vsphere_config.dart';

class VMwareNodePoolConfig {
  /// VMware disk size to be used during creation.
  final pulumi.Input<int>? bootDiskSizeGb;
  /// The number of CPUs for each node in the node pool.
  final pulumi.Input<int>? cpus;
  /// Allow node pool traffic to be load balanced. Only works for clusters with
  /// MetalLB load balancers.
  final pulumi.Input<bool>? enableLoadBalancer;
  /// The OS image name in vCenter, only valid when using Windows.
  final pulumi.Input<String>? image;
  /// The OS image to be used for each node in a node pool.
  /// Currently `cos`, `cos_cgv2`, `ubuntu`, `ubuntu_cgv2`, `ubuntu_containerd` and `windows` are supported.
  final pulumi.Input<String> imageType;
  /// The map of Kubernetes labels (key/value pairs) to be applied to each node.
  /// These will added in addition to any default label(s) that
  /// Kubernetes may apply to the node.
  /// In case of conflict in label keys, the applied set may differ depending on
  /// the Kubernetes version -- it's best to assume the behavior is undefined
  /// and conflicts should be avoided.
  final pulumi.Input<Map<String, String>>? labels;
  /// The megabytes of memory for each node in the node pool.
  final pulumi.Input<int>? memoryMb;
  /// The number of nodes in the node pool.
  final pulumi.Input<int>? replicas;
  /// The initial taints assigned to nodes of this node pool.
  /// Structure is documented below.
  final pulumi.Input<List<VMwareNodePoolConfigTaint>>? taints;
  /// Specifies the vSphere config for node pool.
  /// Structure is documented below.
  final pulumi.Input<VMwareNodePoolConfigVsphereConfig>? vsphereConfig;

  /// Creates a new [VMwareNodePoolConfig].
  /// [bootDiskSizeGb] VMware disk size to be used during creation.
  /// [cpus] The number of CPUs for each node in the node pool.
  /// [enableLoadBalancer] Allow node pool traffic to be load balanced. Only works for clusters with
  /// [image] The OS image name in vCenter, only valid when using Windows.
  /// [imageType] The OS image to be used for each node in a node pool.
  /// [labels] The map of Kubernetes labels (key/value pairs) to be applied to each node.
  /// [memoryMb] The megabytes of memory for each node in the node pool.
  /// [replicas] The number of nodes in the node pool.
  /// [taints] The initial taints assigned to nodes of this node pool.
  /// [vsphereConfig] Specifies the vSphere config for node pool.
  VMwareNodePoolConfig({
    this.bootDiskSizeGb,
    this.cpus,
    this.enableLoadBalancer,
    this.image,
    required this.imageType,
    this.labels,
    this.memoryMb,
    this.replicas,
    this.taints,
    this.vsphereConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bootDiskSizeGb': ?bootDiskSizeGb,
      'cpus': ?cpus,
      'enableLoadBalancer': ?enableLoadBalancer,
      'image': ?image,
      'imageType': imageType,
      'labels': ?labels,
      'memoryMb': ?memoryMb,
      'replicas': ?replicas,
      'taints': ?pulumi.Input.mapOptionalInputValue<List<VMwareNodePoolConfigTaint>, List<Map<String, dynamic>>>(taints, (value) => pulumi.Input.encodeList<VMwareNodePoolConfigTaint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vsphereConfig': ?pulumi.Input.mapOptionalInputValue<VMwareNodePoolConfigVsphereConfig, Map<String, dynamic>>(vsphereConfig, (value) => value.toMap()),
    };
  }

  factory VMwareNodePoolConfig.fromMap(Map<String, dynamic> map) {
    return VMwareNodePoolConfig(
      bootDiskSizeGb: (() { final guardedValue = map['bootDiskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cpus: (() { final guardedValue = map['cpus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      enableLoadBalancer: (() { final guardedValue = map['enableLoadBalancer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageType: pulumi.Input.fromValue(map['imageType'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      memoryMb: (() { final guardedValue = map['memoryMb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      replicas: (() { final guardedValue = map['replicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      taints: (() { final guardedValue = map['taints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VMwareNodePoolConfigTaint>(guardedValue, (value) => VMwareNodePoolConfigTaint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vsphereConfig: (() { final guardedValue = map['vsphereConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VMwareNodePoolConfigVsphereConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

