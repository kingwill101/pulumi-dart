import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'resource_pool_status_request_args.dart';
import 'resource_pool_status_request_spec.dart';
import 'resource_pool_status_request_status.dart';

/// ResourcePoolStatusRequest triggers a one-time calculation of resource pool status based on the provided filters. Once status is set, the request is considered complete and will not be reprocessed. Users should delete and recreate requests to get updated information.
class ResourcePoolStatusRequestResourceK8sIoV1alpha3 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object metadata
  late final pulumi.Output<ObjectMeta> metadata;
  /// Spec defines the filters for which pools to include in the status. The spec is immutable once created.
  late final pulumi.Output<ResourcePoolStatusRequestSpec> spec;
  /// Status is populated by the controller with the calculated pool status. When status is non-nil, the request is considered complete and the entire object becomes immutable.
  late final pulumi.Output<ResourcePoolStatusRequestStatus?> status;

  /// Creates a new [ResourcePoolStatusRequestResourceK8sIoV1alpha3].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourcePoolStatusRequestResourceK8sIoV1alpha3]. {@macro pulumi_resource_k8s_io_v1alpha3_resource_pool_status_request_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourcePoolStatusRequestResourceK8sIoV1alpha3(
    String name, {
    ResourcePoolStatusRequestArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:resource.k8s.io/v1alpha3:ResourcePoolStatusRequest',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<ResourcePoolStatusRequestSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourcePoolStatusRequestSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<ResourcePoolStatusRequestStatus?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourcePoolStatusRequestStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [ResourcePoolStatusRequestResourceK8sIoV1alpha3] resource.
  ResourcePoolStatusRequestResourceK8sIoV1alpha3.reference(String urn)
    : super(
        'kubernetes:resource.k8s.io/v1alpha3:ResourcePoolStatusRequest',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<ResourcePoolStatusRequestSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourcePoolStatusRequestSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<ResourcePoolStatusRequestStatus?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourcePoolStatusRequestStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
