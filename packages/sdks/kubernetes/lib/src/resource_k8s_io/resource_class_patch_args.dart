// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/node_selector_patch.dart';
import '../meta/object_meta_patch.dart';
import 'resource_class_parameters_reference_patch.dart';

/// {@template pulumi_resource_k8s_io_v1alpha1_resource_class_patch_args_doc}
/// The set of arguments for ResourceClassPatch.
/// {@endtemplate}
/// {@macro pulumi_resource_k8s_io_v1alpha1_resource_class_patch_args_doc}
class ResourceClassPatchArgs {
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
  final pulumi.Input<ResourceClassParametersReferencePatch>? parametersRef;
  /// Only nodes matching the selector will be considered by the scheduler when trying to find a Node that fits a Pod when that Pod uses a ResourceClaim that has not been allocated yet.
  ///
  /// Setting this field is optional. If null, all nodes are candidates.
  final pulumi.Input<NodeSelectorPatch>? suitableNodes;

  /// Creates a new [ResourceClassPatchArgs].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [driverName] DriverName defines the name of the dynamic resource driver that is used for allocation of a ResourceClaim that uses this class.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata
  /// [parametersRef] ParametersRef references an arbitrary separate object that may hold parameters that will be used by the driver when allocating a resource that uses this class. A dynamic resource driver can distinguish between parameters stored here and and those stored in ResourceClaimSpec.
  /// [suitableNodes] Only nodes matching the selector will be considered by the scheduler when trying to find a Node that fits a Pod when that Pod uses a ResourceClaim that has not been allocated yet.
  ResourceClassPatchArgs({
    pulumi.Output<String>? apiVersion,
    pulumi.Output<String>? driverName,
    pulumi.Output<String>? kind,
    pulumi.Output<ObjectMetaPatch>? metadata,
    pulumi.Output<ResourceClassParametersReferencePatch>? parametersRef,
    pulumi.Output<NodeSelectorPatch>? suitableNodes,
  }) :
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      driverName = pulumi.Input.asOptionalInput<String>(driverName),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ObjectMetaPatch>(metadata),
      parametersRef = pulumi.Input.asOptionalInput<ResourceClassParametersReferencePatch>(parametersRef),
      suitableNodes = pulumi.Input.asOptionalInput<NodeSelectorPatch>(suitableNodes);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'driverName': ?driverName,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMetaPatch, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'parametersRef': ?pulumi.Input.mapOptionalInputValue<ResourceClassParametersReferencePatch, Map<String, dynamic>>(parametersRef, (value) => value.toMap()),
      'suitableNodes': ?pulumi.Input.mapOptionalInputValue<NodeSelectorPatch, Map<String, dynamic>>(suitableNodes, (value) => value.toMap()),
    };
  }

  factory ResourceClassPatchArgs.fromMap(Map<String, dynamic> map) {
    return ResourceClassPatchArgs(
      apiVersion: map['apiVersion'] == null ? null : pulumi.Output.create<String>(map['apiVersion'] as String),
      driverName: map['driverName'] == null ? null : pulumi.Output.create<String>(map['driverName'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<ObjectMetaPatch>(ObjectMetaPatch.fromMap((map['metadata'] as Map).cast<String, dynamic>())),
      parametersRef: map['parametersRef'] == null ? null : pulumi.Output.create<ResourceClassParametersReferencePatch>(ResourceClassParametersReferencePatch.fromMap((map['parametersRef'] as Map).cast<String, dynamic>())),
      suitableNodes: map['suitableNodes'] == null ? null : pulumi.Output.create<NodeSelectorPatch>(NodeSelectorPatch.fromMap((map['suitableNodes'] as Map).cast<String, dynamic>())),
    );
  }
}

