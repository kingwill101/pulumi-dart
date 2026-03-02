// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/node_selector.dart';
import '../meta/object_meta.dart';
import 'resource_class_parameters_reference.dart';

/// {@template pulumi_resource_k8s_io_v1alpha1_resource_class_args_doc}
/// The set of arguments for ResourceClass.
/// {@endtemplate}
/// {@macro pulumi_resource_k8s_io_v1alpha1_resource_class_args_doc}
class ResourceClassArgs {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// DriverName defines the name of the dynamic resource driver that is used for allocation of a ResourceClaim that uses this class.
  ///
  /// Resource drivers have a unique name in forward domain order (acme.example.com).
  final pulumi.Input<String> driverName;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard object metadata
  final pulumi.Input<ObjectMeta>? metadata;
  /// ParametersRef references an arbitrary separate object that may hold parameters that will be used by the driver when allocating a resource that uses this class. A dynamic resource driver can distinguish between parameters stored here and and those stored in ResourceClaimSpec.
  final pulumi.Input<ResourceClassParametersReference>? parametersRef;
  /// Only nodes matching the selector will be considered by the scheduler when trying to find a Node that fits a Pod when that Pod uses a ResourceClaim that has not been allocated yet.
  ///
  /// Setting this field is optional. If null, all nodes are candidates.
  final pulumi.Input<NodeSelector>? suitableNodes;

  /// Creates a new [ResourceClassArgs].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [driverName] DriverName defines the name of the dynamic resource driver that is used for allocation of a ResourceClaim that uses this class.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata
  /// [parametersRef] ParametersRef references an arbitrary separate object that may hold parameters that will be used by the driver when allocating a resource that uses this class. A dynamic resource driver can distinguish between parameters stored here and and those stored in ResourceClaimSpec.
  /// [suitableNodes] Only nodes matching the selector will be considered by the scheduler when trying to find a Node that fits a Pod when that Pod uses a ResourceClaim that has not been allocated yet.
  ResourceClassArgs({
    this.apiVersion,
    required this.driverName,
    this.kind,
    this.metadata,
    this.parametersRef,
    this.suitableNodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'driverName': driverName,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'parametersRef': ?pulumi.Input.mapOptionalInputValue<ResourceClassParametersReference, Map<String, dynamic>>(parametersRef, (value) => value.toMap()),
      'suitableNodes': ?pulumi.Input.mapOptionalInputValue<NodeSelector, Map<String, dynamic>>(suitableNodes, (value) => value.toMap()),
    };
  }

  factory ResourceClassArgs.fromMap(Map<String, dynamic> map) {
    return ResourceClassArgs(
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion']! as String).input(),
      driverName: (map['driverName'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      metadata: map['metadata'] == null ? null : (ObjectMeta.fromMap((map['metadata']! as Map).cast<String, dynamic>())).input(),
      parametersRef: map['parametersRef'] == null ? null : (ResourceClassParametersReference.fromMap((map['parametersRef']! as Map).cast<String, dynamic>())).input(),
      suitableNodes: map['suitableNodes'] == null ? null : (NodeSelector.fromMap((map['suitableNodes']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

