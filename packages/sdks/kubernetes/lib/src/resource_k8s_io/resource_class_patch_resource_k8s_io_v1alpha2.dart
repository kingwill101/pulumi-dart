// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/node_selector_patch.dart';
import '../meta/object_meta_patch.dart';
import 'resource_class_parameters_reference_patch_resource_k8s_io_v1alpha2.dart';

/// ResourceClass is used by administrators to influence how resources are allocated.
///
/// This is an alpha type and requires enabling the DynamicResourceAllocation feature gate.
class ResourceClassPatchResourceK8sIoV1alpha2 {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// DriverName defines the name of the dynamic resource driver that is used for allocation of a ResourceClaim that uses this class.
  ///
  /// Resource drivers have a unique name in forward domain order (acme.example.com).
  final pulumi.Input<String>? driverName;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard object metadata
  final pulumi.Input<ObjectMetaPatch>? metadata;
  /// ParametersRef references an arbitrary separate object that may hold parameters that will be used by the driver when allocating a resource that uses this class. A dynamic resource driver can distinguish between parameters stored here and and those stored in ResourceClaimSpec.
  final pulumi.Input<ResourceClassParametersReferencePatchResourceK8sIoV1alpha2>? parametersRef;
  /// If and only if allocation of claims using this class is handled via structured parameters, then StructuredParameters must be set to true.
  final pulumi.Input<bool>? structuredParameters;
  /// Only nodes matching the selector will be considered by the scheduler when trying to find a Node that fits a Pod when that Pod uses a ResourceClaim that has not been allocated yet.
  ///
  /// Setting this field is optional. If null, all nodes are candidates.
  final pulumi.Input<NodeSelectorPatch>? suitableNodes;

  /// Creates a new [ResourceClassPatchResourceK8sIoV1alpha2].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [driverName] DriverName defines the name of the dynamic resource driver that is used for allocation of a ResourceClaim that uses this class.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata
  /// [parametersRef] ParametersRef references an arbitrary separate object that may hold parameters that will be used by the driver when allocating a resource that uses this class. A dynamic resource driver can distinguish between parameters stored here and and those stored in ResourceClaimSpec.
  /// [structuredParameters] If and only if allocation of claims using this class is handled via structured parameters, then StructuredParameters must be set to true.
  /// [suitableNodes] Only nodes matching the selector will be considered by the scheduler when trying to find a Node that fits a Pod when that Pod uses a ResourceClaim that has not been allocated yet.
  ResourceClassPatchResourceK8sIoV1alpha2({
    this.apiVersion,
    this.driverName,
    this.kind,
    this.metadata,
    this.parametersRef,
    this.structuredParameters,
    this.suitableNodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'driverName': ?driverName,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMetaPatch, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'parametersRef': ?pulumi.Input.mapOptionalInputValue<ResourceClassParametersReferencePatchResourceK8sIoV1alpha2, Map<String, dynamic>>(parametersRef, (value) => value.toMap()),
      'structuredParameters': ?structuredParameters,
      'suitableNodes': ?pulumi.Input.mapOptionalInputValue<NodeSelectorPatch, Map<String, dynamic>>(suitableNodes, (value) => value.toMap()),
    };
  }

  factory ResourceClassPatchResourceK8sIoV1alpha2.fromMap(Map<String, dynamic> map) {
    return ResourceClassPatchResourceK8sIoV1alpha2(
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion'] as String).input(),
      driverName: map['driverName'] == null ? null : (map['driverName'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      metadata: map['metadata'] == null ? null : (ObjectMetaPatch.fromMap((map['metadata'] as Map).cast<String, dynamic>())).input(),
      parametersRef: map['parametersRef'] == null ? null : (ResourceClassParametersReferencePatchResourceK8sIoV1alpha2.fromMap((map['parametersRef'] as Map).cast<String, dynamic>())).input(),
      structuredParameters: map['structuredParameters'] == null ? null : (map['structuredParameters'] as bool).input(),
      suitableNodes: map['suitableNodes'] == null ? null : (NodeSelectorPatch.fromMap((map['suitableNodes'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

