// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_taint.dart';
import 'vmware_vsphere_config.dart';

/// Parameters that describe the configuration of all nodes within a given node pool.
class VmwareNodeConfig {
  /// VMware disk size to be used during creation.
  final pulumi.Input<String>? bootDiskSizeGb;

  /// The number of CPUs for each node in the node pool.
  final pulumi.Input<String>? cpus;

  /// Allow node pool traffic to be load balanced. Only works for clusters with MetalLB load balancers.
  final pulumi.Input<bool>? enableLoadBalancer;

  /// The OS image name in vCenter, only valid when using Windows.
  final pulumi.Input<String>? image;

  /// The OS image to be used for each node in a node pool. Currently `cos`, `ubuntu`, `ubuntu_containerd` and `windows` are supported.
  final pulumi.Input<String> imageType;

  /// The map of Kubernetes labels (key/value pairs) to be applied to each node. These will added in addition to any default label(s) that Kubernetes may apply to the node. In case of conflict in label keys, the applied set may differ depending on the Kubernetes version -- it's best to assume the behavior is undefined and conflicts should be avoided. For more information, including usage and the valid values, see: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/
  final pulumi.Input<Map<String, String>>? labels;

  /// The megabytes of memory for each node in the node pool.
  final pulumi.Input<String>? memoryMb;

  /// The number of nodes in the node pool.
  final pulumi.Input<String>? replicas;

  /// The initial taints assigned to nodes of this node pool.
  final pulumi.Input<List<NodeTaint>>? taints;

  /// Specifies the vSphere config for node pool.
  final pulumi.Input<VmwareVsphereConfig>? vsphereConfig;

  /// Creates a new [VmwareNodeConfig].
  /// [bootDiskSizeGb] VMware disk size to be used during creation.
  /// [cpus] The number of CPUs for each node in the node pool.
  /// [enableLoadBalancer] Allow node pool traffic to be load balanced. Only works for clusters with MetalLB load balancers.
  /// [image] The OS image name in vCenter, only valid when using Windows.
  /// [imageType] The OS image to be used for each node in a node pool. Currently `cos`, `ubuntu`, `ubuntu_containerd` and `windows` are supported.
  /// [labels] The map of Kubernetes labels (key/value pairs) to be applied to each node. These will added in addition to any default label(s) that Kubernetes may apply to the node. In case of conflict in label keys, the applied set may differ depending on the Kubernetes version -- it's best to assume the behavior is undefined and conflicts should be avoided. For more information, including usage and the valid values, see: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/
  /// [memoryMb] The megabytes of memory for each node in the node pool.
  /// [replicas] The number of nodes in the node pool.
  /// [taints] The initial taints assigned to nodes of this node pool.
  /// [vsphereConfig] Specifies the vSphere config for node pool.
  VmwareNodeConfig({
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
      'taints':
          ?pulumi.Input.mapOptionalInputValue<
            List<NodeTaint>,
            List<Map<String, dynamic>>
          >(
            taints,
            (value) => pulumi.Input.encodeList<NodeTaint, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'vsphereConfig':
          ?pulumi.Input.mapOptionalInputValue<
            VmwareVsphereConfig,
            Map<String, dynamic>
          >(vsphereConfig, (value) => value.toMap()),
    };
  }

  factory VmwareNodeConfig.fromMap(Map<String, dynamic> map) {
    return VmwareNodeConfig(
      bootDiskSizeGb: (() {
        final guardedValue = map['bootDiskSizeGb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cpus: (() {
        final guardedValue = map['cpus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enableLoadBalancer: (() {
        final guardedValue = map['enableLoadBalancer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      image: (() {
        final guardedValue = map['image'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      imageType: pulumi.Input.fromValue(map['imageType'] as String),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      memoryMb: (() {
        final guardedValue = map['memoryMb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      replicas: (() {
        final guardedValue = map['replicas'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      taints: (() {
        final guardedValue = map['taints'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NodeTaint>(
            guardedValue,
            (value) =>
                NodeTaint.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      vsphereConfig: (() {
        final guardedValue = map['vsphereConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VmwareVsphereConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
