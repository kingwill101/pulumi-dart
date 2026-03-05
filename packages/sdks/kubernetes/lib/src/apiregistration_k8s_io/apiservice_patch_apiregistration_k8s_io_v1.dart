import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'apiservice_patch_args.dart';
import 'apiservice_spec_patch.dart';
import 'apiservice_status_patch.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// APIService represents a server for a particular GroupVersion. Name must be "version.group".
class APIServicePatchApiregistrationK8sIoV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMetaPatch?> metadata;
  /// Spec contains information for locating and communicating with a server
  late final pulumi.Output<APIServiceSpecPatch?> spec;
  /// Status contains derived information about an API server
  late final pulumi.Output<APIServiceStatusPatch?> status;

  /// Creates a new [APIServicePatchApiregistrationK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [APIServicePatchApiregistrationK8sIoV1]. {@macro pulumi_apiregistration_k8s_io_v1_apiservice_patch_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  APIServicePatchApiregistrationK8sIoV1(
    String name, {
    APIServicePatchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:apiregistration.k8s.io/v1:APIServicePatch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String?>('apiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<APIServiceSpecPatch?>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return APIServiceSpecPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<APIServiceStatusPatch?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return APIServiceStatusPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
