// ignore_for_file: unused_element, unnecessary_cast

import '../core/node_selector_patch.dart';

/// AllocationResult contains attributed of an allocated resource.
class AllocationResultPatchResourceK8sIoV1alpha1 {
  /// This field will get set by the resource driver after it has allocated the resource driver to inform the scheduler where it can schedule Pods using the ResourceClaim.
  ///
  /// Setting this field is optional. If null, the resource is available everywhere.
  final NodeSelectorPatch? availableOnNodes;
  /// ResourceHandle contains arbitrary data returned by the driver after a successful allocation. This is opaque for Kubernetes. Driver documentation may explain to users how to interpret this data if needed.
  ///
  /// The maximum size of this field is 16KiB. This may get increased in the future, but not reduced.
  final String? resourceHandle;
  /// Shareable determines whether the resource supports more than one consumer at a time.
  final bool? shareable;

  /// Creates a new [AllocationResultPatchResourceK8sIoV1alpha1].
  /// [availableOnNodes] This field will get set by the resource driver after it has allocated the resource driver to inform the scheduler where it can schedule Pods using the ResourceClaim.
  /// [resourceHandle] ResourceHandle contains arbitrary data returned by the driver after a successful allocation. This is opaque for Kubernetes. Driver documentation may explain to users how to interpret this data if needed.
  /// [shareable] Shareable determines whether the resource supports more than one consumer at a time.
  AllocationResultPatchResourceK8sIoV1alpha1({
    this.availableOnNodes,
    this.resourceHandle,
    this.shareable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableOnNodes': ?availableOnNodes == null ? null : availableOnNodes!.toMap(),
      'resourceHandle': ?resourceHandle,
      'shareable': ?shareable,
    };
  }

  factory AllocationResultPatchResourceK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return AllocationResultPatchResourceK8sIoV1alpha1(
      availableOnNodes: map['availableOnNodes'] == null ? null : NodeSelectorPatch.fromMap((map['availableOnNodes'] as Map).cast<String, dynamic>()),
      resourceHandle: map['resourceHandle'] == null ? null : map['resourceHandle'] as String,
      shareable: map['shareable'] == null ? null : map['shareable'] as bool,
    );
  }
}

