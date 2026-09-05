import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'named_resources_resources.dart';
import 'resource_slice_resource_k8s_io_v1alpha2_args.dart';

/// ResourceSlice provides information about available resources on individual nodes.
class ResourceSliceResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// DriverName identifies the DRA driver providing the capacity information. A field selector can be used to list only ResourceSlice objects with a certain driver name.
  late final pulumi.Output<String> driverName;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object metadata
  late final pulumi.Output<ObjectMeta> metadata;
  /// NamedResources describes available resources using the named resources model.
  late final pulumi.Output<NamedResourcesResources> namedResources;
  /// NodeName identifies the node which provides the resources if they are local to a node.
  ///
  /// A field selector can be used to list only ResourceSlice objects with a certain node name.
  late final pulumi.Output<String> nodeName;

  /// Creates a new [ResourceSliceResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceSliceResource]. {@macro pulumi_resource_k8s_io_v1alpha2_resource_slice_resource_k8s_io_v1alpha2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceSliceResource(
    String name, {
    ResourceSliceResourceK8sIoV1alpha2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:resource.k8s.io/v1alpha2:ResourceSlice',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    driverName = registerOutput<String>('driverName');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    namedResources = registerOutput<NamedResourcesResources>('namedResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NamedResourcesResources.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodeName = registerOutput<String>('nodeName');
  }

  /// Creates a typed reference to an existing [ResourceSliceResource] resource.
  ResourceSliceResource.reference(String urn)
    : super(
        'kubernetes:resource.k8s.io/v1alpha2:ResourceSlice',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    driverName = registerOutput<String>('driverName');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    namedResources = registerOutput<NamedResourcesResources>('namedResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NamedResourcesResources.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodeName = registerOutput<String>('nodeName');
  }
}
