// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/node_selector.dart';

/// AllocationResult contains attributed of an allocated resource.
class AllocationResultResourceK8sIoV1alpha1 {
  /// This field will get set by the resource driver after it has allocated the resource driver to inform the scheduler where it can schedule Pods using the ResourceClaim.
  ///
  /// Setting this field is optional. If null, the resource is available everywhere.
  final pulumi.Input<NodeSelector>? availableOnNodes;
  /// ResourceHandle contains arbitrary data returned by the driver after a successful allocation. This is opaque for Kubernetes. Driver documentation may explain to users how to interpret this data if needed.
  ///
  /// The maximum size of this field is 16KiB. This may get increased in the future, but not reduced.
  final pulumi.Input<String>? resourceHandle;
  /// Shareable determines whether the resource supports more than one consumer at a time.
  final pulumi.Input<bool>? shareable;

  /// Creates a new [AllocationResultResourceK8sIoV1alpha1].
  /// [availableOnNodes] This field will get set by the resource driver after it has allocated the resource driver to inform the scheduler where it can schedule Pods using the ResourceClaim.
  /// [resourceHandle] ResourceHandle contains arbitrary data returned by the driver after a successful allocation. This is opaque for Kubernetes. Driver documentation may explain to users how to interpret this data if needed.
  /// [shareable] Shareable determines whether the resource supports more than one consumer at a time.
  const AllocationResultResourceK8sIoV1alpha1({
    this.availableOnNodes,
    this.resourceHandle,
    this.shareable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableOnNodes': ?pulumi.Input.mapOptionalInputValue<NodeSelector, Map<String, dynamic>>(availableOnNodes, (value) => value.toMap()),
      'resourceHandle': ?resourceHandle,
      'shareable': ?shareable,
    };
  }

  factory AllocationResultResourceK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return AllocationResultResourceK8sIoV1alpha1(
      availableOnNodes: (() { final guardedValue = map['availableOnNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodeSelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceHandle: (() { final guardedValue = map['resourceHandle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shareable: (() { final guardedValue = map['shareable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
