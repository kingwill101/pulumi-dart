// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/node_selector_patch.dart';
import 'resource_handle_patch.dart';

/// AllocationResult contains attributes of an allocated resource.
class AllocationResultPatchResourceK8sIoV1alpha2 {
  /// This field will get set by the resource driver after it has allocated the resource to inform the scheduler where it can schedule Pods using the ResourceClaim.
  ///
  /// Setting this field is optional. If null, the resource is available everywhere.
  final pulumi.Input<NodeSelectorPatch>? availableOnNodes;
  /// ResourceHandles contain the state associated with an allocation that should be maintained throughout the lifetime of a claim. Each ResourceHandle contains data that should be passed to a specific kubelet plugin once it lands on a node. This data is returned by the driver after a successful allocation and is opaque to Kubernetes. Driver documentation may explain to users how to interpret this data if needed.
  ///
  /// Setting this field is optional. It has a maximum size of 32 entries. If null (or empty), it is assumed this allocation will be processed by a single kubelet plugin with no ResourceHandle data attached. The name of the kubelet plugin invoked will match the DriverName set in the ResourceClaimStatus this AllocationResult is embedded in.
  final pulumi.Input<List<ResourceHandlePatch>>? resourceHandles;
  /// Shareable determines whether the resource supports more than one consumer at a time.
  final pulumi.Input<bool>? shareable;

  /// Creates a new [AllocationResultPatchResourceK8sIoV1alpha2].
  /// [availableOnNodes] This field will get set by the resource driver after it has allocated the resource to inform the scheduler where it can schedule Pods using the ResourceClaim.
  /// [resourceHandles] ResourceHandles contain the state associated with an allocation that should be maintained throughout the lifetime of a claim. Each ResourceHandle contains data that should be passed to a specific kubelet plugin once it lands on a node. This data is returned by the driver after a successful allocation and is opaque to Kubernetes. Driver documentation may explain to users how to interpret this data if needed.
  /// [shareable] Shareable determines whether the resource supports more than one consumer at a time.
  AllocationResultPatchResourceK8sIoV1alpha2({
    this.availableOnNodes,
    this.resourceHandles,
    this.shareable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableOnNodes': ?pulumi.Input.mapOptionalInputValue<NodeSelectorPatch, Map<String, dynamic>>(availableOnNodes, (value) => value.toMap()),
      'resourceHandles': ?pulumi.Input.mapOptionalInputValue<List<ResourceHandlePatch>, List<Map<String, dynamic>>>(resourceHandles, (value) => pulumi.Input.encodeList<ResourceHandlePatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'shareable': ?shareable,
    };
  }

  factory AllocationResultPatchResourceK8sIoV1alpha2.fromMap(Map<String, dynamic> map) {
    return AllocationResultPatchResourceK8sIoV1alpha2(
      availableOnNodes: map['availableOnNodes'] == null ? null : (NodeSelectorPatch.fromMap((map['availableOnNodes'] as Map).cast<String, dynamic>())).input(),
      resourceHandles: map['resourceHandles'] == null ? null : (pulumi.Input.decodeList<ResourceHandlePatch>(map['resourceHandles'], (value) => ResourceHandlePatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
      shareable: map['shareable'] == null ? null : (map['shareable'] as bool).input(),
    );
  }
}

