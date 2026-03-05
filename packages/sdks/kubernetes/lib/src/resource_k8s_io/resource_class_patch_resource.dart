import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/node_selector_patch.dart';
import '../meta/object_meta_patch.dart';
import 'resource_class_parameters_reference_patch_resource_k8s_io_v1alpha2.dart';
import 'resource_class_patch_resource_k8s_io_v1alpha2_args.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// ResourceClass is used by administrators to influence how resources are allocated.
///
/// This is an alpha type and requires enabling the DynamicResourceAllocation feature gate.
class ResourceClassPatchResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;
  /// DriverName defines the name of the dynamic resource driver that is used for allocation of a ResourceClaim that uses this class.
  ///
  /// Resource drivers have a unique name in forward domain order (acme.example.com).
  late final pulumi.Output<String?> driverName;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;
  /// Standard object metadata
  late final pulumi.Output<ObjectMetaPatch?> metadata;
  /// ParametersRef references an arbitrary separate object that may hold parameters that will be used by the driver when allocating a resource that uses this class. A dynamic resource driver can distinguish between parameters stored here and and those stored in ResourceClaimSpec.
  late final pulumi.Output<ResourceClassParametersReferencePatchResourceK8sIoV1alpha2?> parametersRef;
  /// If and only if allocation of claims using this class is handled via structured parameters, then StructuredParameters must be set to true.
  late final pulumi.Output<bool?> structuredParameters;
  /// Only nodes matching the selector will be considered by the scheduler when trying to find a Node that fits a Pod when that Pod uses a ResourceClaim that has not been allocated yet.
  ///
  /// Setting this field is optional. If null, all nodes are candidates.
  late final pulumi.Output<NodeSelectorPatch?> suitableNodes;

  /// Creates a new [ResourceClassPatchResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceClassPatchResource]. {@macro pulumi_resource_k8s_io_v1alpha2_resource_class_patch_resource_k8s_io_v1alpha2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceClassPatchResource(
    String name, {
    ResourceClassPatchResourceK8sIoV1alpha2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:resource.k8s.io/v1alpha2:ResourceClassPatch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String?>('apiVersion');
    driverName = registerOutput<String?>('driverName');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    parametersRef = registerOutput<ResourceClassParametersReferencePatchResourceK8sIoV1alpha2?>('parametersRef', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceClassParametersReferencePatchResourceK8sIoV1alpha2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    structuredParameters = registerOutput<bool?>('structuredParameters');
    suitableNodes = registerOutput<NodeSelectorPatch?>('suitableNodes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodeSelectorPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
