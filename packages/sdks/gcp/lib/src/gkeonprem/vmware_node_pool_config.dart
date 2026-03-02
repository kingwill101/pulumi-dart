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
      bootDiskSizeGb: map['bootDiskSizeGb'] == null ? null : (map['bootDiskSizeGb']! as int).input(),
      cpus: map['cpus'] == null ? null : (map['cpus']! as int).input(),
      enableLoadBalancer: map['enableLoadBalancer'] == null ? null : (map['enableLoadBalancer']! as bool).input(),
      image: map['image'] == null ? null : (map['image']! as String).input(),
      imageType: (map['imageType'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      memoryMb: map['memoryMb'] == null ? null : (map['memoryMb']! as int).input(),
      replicas: map['replicas'] == null ? null : (map['replicas']! as int).input(),
      taints: map['taints'] == null ? null : (pulumi.Input.decodeList<VMwareNodePoolConfigTaint>(map['taints']!, (value) => VMwareNodePoolConfigTaint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vsphereConfig: map['vsphereConfig'] == null ? null : (VMwareNodePoolConfigVsphereConfig.fromMap((map['vsphereConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

