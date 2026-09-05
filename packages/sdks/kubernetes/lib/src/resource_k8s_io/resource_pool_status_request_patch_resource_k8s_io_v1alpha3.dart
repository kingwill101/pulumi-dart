import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'resource_pool_status_request_patch_args.dart';
import 'resource_pool_status_request_spec_patch.dart';
import 'resource_pool_status_request_status_patch.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// ResourcePoolStatusRequest triggers a one-time calculation of resource pool status based on the provided filters. Once status is set, the request is considered complete and will not be reprocessed. Users should delete and recreate requests to get updated information.
class ResourcePoolStatusRequestPatchResourceK8sIoV1alpha3 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;
  /// Standard object metadata
  late final pulumi.Output<ObjectMetaPatch?> metadata;
  /// Spec defines the filters for which pools to include in the status. The spec is immutable once created.
  late final pulumi.Output<ResourcePoolStatusRequestSpecPatch?> spec;
  /// Status is populated by the controller with the calculated pool status. When status is non-nil, the request is considered complete and the entire object becomes immutable.
  late final pulumi.Output<ResourcePoolStatusRequestStatusPatch?> status;

  /// Creates a new [ResourcePoolStatusRequestPatchResourceK8sIoV1alpha3].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourcePoolStatusRequestPatchResourceK8sIoV1alpha3]. {@macro pulumi_resource_k8s_io_v1alpha3_resource_pool_status_request_patch_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourcePoolStatusRequestPatchResourceK8sIoV1alpha3(
    String name, {
    ResourcePoolStatusRequestPatchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:resource.k8s.io/v1alpha3:ResourcePoolStatusRequestPatch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<ResourcePoolStatusRequestSpecPatch?>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourcePoolStatusRequestSpecPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<ResourcePoolStatusRequestStatusPatch?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourcePoolStatusRequestStatusPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [ResourcePoolStatusRequestPatchResourceK8sIoV1alpha3] resource.
  ResourcePoolStatusRequestPatchResourceK8sIoV1alpha3.reference(String urn)
    : super(
        'kubernetes:resource.k8s.io/v1alpha3:ResourcePoolStatusRequestPatch',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<ResourcePoolStatusRequestSpecPatch?>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourcePoolStatusRequestSpecPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<ResourcePoolStatusRequestStatusPatch?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourcePoolStatusRequestStatusPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
