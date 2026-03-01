// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/node_selector.dart';
import '../meta/object_meta.dart';
import 'resource_class_parameters_reference_resource_k8s_io_v1alpha2.dart';

/// {@template pulumi_resource_k8s_io_v1alpha2_resource_class_resource_k8s_io_v1alpha2_args_doc}
/// The set of arguments for ResourceClass.
/// {@endtemplate}
/// {@macro pulumi_resource_k8s_io_v1alpha2_resource_class_resource_k8s_io_v1alpha2_args_doc}
class ResourceClassResourceK8sIoV1alpha2Args {
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
  final pulumi.Input<ResourceClassParametersReferenceResourceK8sIoV1alpha2>? parametersRef;
  /// If and only if allocation of claims using this class is handled via structured parameters, then StructuredParameters must be set to true.
  final pulumi.Input<bool>? structuredParameters;
  /// Only nodes matching the selector will be considered by the scheduler when trying to find a Node that fits a Pod when that Pod uses a ResourceClaim that has not been allocated yet.
  ///
  /// Setting this field is optional. If null, all nodes are candidates.
  final pulumi.Input<NodeSelector>? suitableNodes;

  /// Creates a new [ResourceClassResourceK8sIoV1alpha2Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [driverName] DriverName defines the name of the dynamic resource driver that is used for allocation of a ResourceClaim that uses this class.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata
  /// [parametersRef] ParametersRef references an arbitrary separate object that may hold parameters that will be used by the driver when allocating a resource that uses this class. A dynamic resource driver can distinguish between parameters stored here and and those stored in ResourceClaimSpec.
  /// [structuredParameters] If and only if allocation of claims using this class is handled via structured parameters, then StructuredParameters must be set to true.
  /// [suitableNodes] Only nodes matching the selector will be considered by the scheduler when trying to find a Node that fits a Pod when that Pod uses a ResourceClaim that has not been allocated yet.
  ResourceClassResourceK8sIoV1alpha2Args({
    pulumi.Output<String>? apiVersion,
    required pulumi.Output<String> driverName,
    pulumi.Output<String>? kind,
    pulumi.Output<ObjectMeta>? metadata,
    pulumi.Output<ResourceClassParametersReferenceResourceK8sIoV1alpha2>? parametersRef,
    pulumi.Output<bool>? structuredParameters,
    pulumi.Output<NodeSelector>? suitableNodes,
  }) :
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      driverName = pulumi.Input.asInput<String>(driverName),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ObjectMeta>(metadata),
      parametersRef = pulumi.Input.asOptionalInput<ResourceClassParametersReferenceResourceK8sIoV1alpha2>(parametersRef),
      structuredParameters = pulumi.Input.asOptionalInput<bool>(structuredParameters),
      suitableNodes = pulumi.Input.asOptionalInput<NodeSelector>(suitableNodes);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'driverName': driverName,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'parametersRef': ?pulumi.Input.mapOptionalInputValue<ResourceClassParametersReferenceResourceK8sIoV1alpha2, Map<String, dynamic>>(parametersRef, (value) => value.toMap()),
      'structuredParameters': ?structuredParameters,
      'suitableNodes': ?pulumi.Input.mapOptionalInputValue<NodeSelector, Map<String, dynamic>>(suitableNodes, (value) => value.toMap()),
    };
  }

  factory ResourceClassResourceK8sIoV1alpha2Args.fromMap(Map<String, dynamic> map) {
    return ResourceClassResourceK8sIoV1alpha2Args(
      apiVersion: map['apiVersion'] == null ? null : pulumi.Output.create<String>(map['apiVersion'] as String),
      driverName: pulumi.Output.create<String>(map['driverName'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<ObjectMeta>(ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>())),
      parametersRef: map['parametersRef'] == null ? null : pulumi.Output.create<ResourceClassParametersReferenceResourceK8sIoV1alpha2>(ResourceClassParametersReferenceResourceK8sIoV1alpha2.fromMap((map['parametersRef'] as Map).cast<String, dynamic>())),
      structuredParameters: map['structuredParameters'] == null ? null : pulumi.Output.create<bool>(map['structuredParameters'] as bool),
      suitableNodes: map['suitableNodes'] == null ? null : pulumi.Output.create<NodeSelector>(NodeSelector.fromMap((map['suitableNodes'] as Map).cast<String, dynamic>())),
    );
  }
}

