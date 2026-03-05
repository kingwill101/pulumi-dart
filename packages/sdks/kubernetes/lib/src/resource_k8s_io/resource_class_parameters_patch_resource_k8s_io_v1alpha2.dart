import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'resource_class_parameters_patch_args.dart';
import 'resource_class_parameters_reference_patch_resource_k8s_io_v1alpha2.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// ResourceClassParameters defines resource requests for a ResourceClass in an in-tree format understood by Kubernetes.
class ResourceClassParametersPatchResourceK8sIoV1alpha2 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;
  /// Filters describes additional contraints that must be met when using the class.
  late final pulumi.Output<List<Map<String, dynamic>>?> filters;
  /// If this object was created from some other resource, then this links back to that resource. This field is used to find the in-tree representation of the class parameters when the parameter reference of the class refers to some unknown type.
  late final pulumi.Output<ResourceClassParametersReferencePatchResourceK8sIoV1alpha2?> generatedFrom;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;
  /// Standard object metadata
  late final pulumi.Output<ObjectMetaPatch?> metadata;
  /// VendorParameters are arbitrary setup parameters for all claims using this class. They are ignored while allocating the claim. There must not be more than one entry per driver.
  late final pulumi.Output<List<Map<String, dynamic>>?> vendorParameters;

  /// Creates a new [ResourceClassParametersPatchResourceK8sIoV1alpha2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceClassParametersPatchResourceK8sIoV1alpha2]. {@macro pulumi_resource_k8s_io_v1alpha2_resource_class_parameters_patch_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceClassParametersPatchResourceK8sIoV1alpha2(
    String name, {
    ResourceClassParametersPatchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:resource.k8s.io/v1alpha2:ResourceClassParametersPatch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String?>('apiVersion');
    filters = registerOutput<List<Map<String, dynamic>>?>('filters');
    generatedFrom = registerOutput<ResourceClassParametersReferencePatchResourceK8sIoV1alpha2?>('generatedFrom', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceClassParametersReferencePatchResourceK8sIoV1alpha2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vendorParameters = registerOutput<List<Map<String, dynamic>>?>('vendorParameters');
  }
}
