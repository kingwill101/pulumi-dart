import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'apiservice_patch_apiregistration_k8s_io_v1beta1_args.dart';
import 'apiservice_spec_patch_apiregistration_k8s_io_v1beta1.dart';
import 'apiservice_status_patch_apiregistration_k8s_io_v1beta1.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// APIService represents a server for a particular GroupVersion. Name must be "version.group".
class APIServicePatchResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;
  late final pulumi.Output<ObjectMetaPatch?> metadata;
  /// Spec contains information for locating and communicating with a server
  late final pulumi.Output<APIServiceSpecPatchApiregistrationK8sIoV1beta1?> spec;
  /// Status contains derived information about an API server
  late final pulumi.Output<APIServiceStatusPatchApiregistrationK8sIoV1beta1?> status;

  /// Creates a new [APIServicePatchResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [APIServicePatchResource]. {@macro pulumi_apiregistration_k8s_io_v1beta1_apiservice_patch_apiregistration_k8s_io_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  APIServicePatchResource(
    String name, {
    APIServicePatchApiregistrationK8sIoV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:apiregistration.k8s.io/v1beta1:APIServicePatch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<APIServiceSpecPatchApiregistrationK8sIoV1beta1?>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return APIServiceSpecPatchApiregistrationK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<APIServiceStatusPatchApiregistrationK8sIoV1beta1?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return APIServiceStatusPatchApiregistrationK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [APIServicePatchResource] resource.
  APIServicePatchResource.reference(String urn)
    : super(
        'kubernetes:apiregistration.k8s.io/v1beta1:APIServicePatch',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<APIServiceSpecPatchApiregistrationK8sIoV1beta1?>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return APIServiceSpecPatchApiregistrationK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<APIServiceStatusPatchApiregistrationK8sIoV1beta1?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return APIServiceStatusPatchApiregistrationK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
