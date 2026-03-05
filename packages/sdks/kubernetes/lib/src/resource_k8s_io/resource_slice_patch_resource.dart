import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'named_resources_resources_patch.dart';
import 'resource_slice_patch_resource_k8s_io_v1alpha2_args.dart';

/// Patch resources are used to modify existing Kubernetes resources by using
/// Server-Side Apply updates. The name of the resource must be specified, but all other properties are optional. More than
/// one patch may be applied to the same resource, and a random FieldManager name will be used for each Patch resource.
/// Conflicts will result in an error by default, but can be forced using the "pulumi.com/patchForce" annotation. See the
/// [Server-Side Apply Docs](https://www.pulumi.com/registry/packages/kubernetes/how-to-guides/managing-resources-with-server-side-apply/) for
/// additional information about using Server-Side Apply to manage Kubernetes resources with Pulumi.
/// ResourceSlice provides information about available resources on individual nodes.
class ResourceSlicePatchResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String?> apiVersion;
  /// DriverName identifies the DRA driver providing the capacity information. A field selector can be used to list only ResourceSlice objects with a certain driver name.
  late final pulumi.Output<String?> driverName;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String?> kind;
  /// Standard object metadata
  late final pulumi.Output<ObjectMetaPatch?> metadata;
  /// NamedResources describes available resources using the named resources model.
  late final pulumi.Output<NamedResourcesResourcesPatch?> namedResources;
  /// NodeName identifies the node which provides the resources if they are local to a node.
  ///
  /// A field selector can be used to list only ResourceSlice objects with a certain node name.
  late final pulumi.Output<String?> nodeName;

  /// Creates a new [ResourceSlicePatchResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceSlicePatchResource]. {@macro pulumi_resource_k8s_io_v1alpha2_resource_slice_patch_resource_k8s_io_v1alpha2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceSlicePatchResource(
    String name, {
    ResourceSlicePatchResourceK8sIoV1alpha2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:resource.k8s.io/v1alpha2:ResourceSlicePatch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String?>('apiVersion');
    driverName = registerOutput<String?>('driverName');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<ObjectMetaPatch?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    namedResources = registerOutput<NamedResourcesResourcesPatch?>('namedResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NamedResourcesResourcesPatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodeName = registerOutput<String?>('nodeName');
  }
}
