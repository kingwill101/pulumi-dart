import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/node_selector.dart';
import '../meta/object_meta.dart';
import 'resource_class_args.dart';
import 'resource_class_parameters_reference.dart';

/// ResourceClass is used by administrators to influence how resources are allocated.
///
/// This is an alpha type and requires enabling the DynamicResourceAllocation feature gate.
class ResourceClassResourceK8sIoV1alpha1 extends pulumi.CustomResource {
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
  late final pulumi.Output<ResourceClassParametersReference> parametersRef;
  /// Only nodes matching the selector will be considered by the scheduler when trying to find a Node that fits a Pod when that Pod uses a ResourceClaim that has not been allocated yet.
  ///
  /// Setting this field is optional. If null, all nodes are candidates.
  late final pulumi.Output<NodeSelector> suitableNodes;

  /// Creates a new [ResourceClassResourceK8sIoV1alpha1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceClassResourceK8sIoV1alpha1]. {@macro pulumi_resource_k8s_io_v1alpha1_resource_class_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceClassResourceK8sIoV1alpha1(
    String name, {
    ResourceClassArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:resource.k8s.io/v1alpha1:ResourceClass',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    driverName = registerOutput<String>('driverName');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    parametersRef = registerOutput<ResourceClassParametersReference>('parametersRef', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceClassParametersReference.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    suitableNodes = registerOutput<NodeSelector>('suitableNodes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodeSelector.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
