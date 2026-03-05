import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/node_selector.dart';
import '../meta/object_meta.dart';
import 'resource_class_parameters_reference_resource_k8s_io_v1alpha2.dart';
import 'resource_class_resource_k8s_io_v1alpha2_args.dart';

/// ResourceClass is used by administrators to influence how resources are allocated.
///
/// This is an alpha type and requires enabling the DynamicResourceAllocation feature gate.
class ResourceClassResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// DriverName defines the name of the dynamic resource driver that is used for allocation of a ResourceClaim that uses this class.
  ///
  /// Resource drivers have a unique name in forward domain order (acme.example.com).
  late final pulumi.Output<String> driverName;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object metadata
  late final pulumi.Output<ObjectMeta> metadata;
  /// ParametersRef references an arbitrary separate object that may hold parameters that will be used by the driver when allocating a resource that uses this class. A dynamic resource driver can distinguish between parameters stored here and and those stored in ResourceClaimSpec.
  late final pulumi.Output<ResourceClassParametersReferenceResourceK8sIoV1alpha2> parametersRef;
  /// If and only if allocation of claims using this class is handled via structured parameters, then StructuredParameters must be set to true.
  late final pulumi.Output<bool> structuredParameters;
  /// Only nodes matching the selector will be considered by the scheduler when trying to find a Node that fits a Pod when that Pod uses a ResourceClaim that has not been allocated yet.
  ///
  /// Setting this field is optional. If null, all nodes are candidates.
  late final pulumi.Output<NodeSelector> suitableNodes;

  /// Creates a new [ResourceClassResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceClassResource]. {@macro pulumi_resource_k8s_io_v1alpha2_resource_class_resource_k8s_io_v1alpha2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceClassResource(
    String name, {
    ResourceClassResourceK8sIoV1alpha2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:resource.k8s.io/v1alpha2:ResourceClass',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    driverName = registerOutput<String>('driverName');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    parametersRef = registerOutput<ResourceClassParametersReferenceResourceK8sIoV1alpha2>('parametersRef', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceClassParametersReferenceResourceK8sIoV1alpha2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    structuredParameters = registerOutput<bool>('structuredParameters');
    suitableNodes = registerOutput<NodeSelector>('suitableNodes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodeSelector.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
