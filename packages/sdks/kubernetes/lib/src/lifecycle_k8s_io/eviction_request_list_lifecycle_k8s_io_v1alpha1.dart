import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'eviction_request.dart';
import 'eviction_request_list_args.dart';

/// EvictionRequestList contains a list of EvictionRequests resources.
class EvictionRequestListLifecycleK8sIoV1alpha1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// items is the list of EvictionRequests.
  late final pulumi.Output<List<EvictionRequest>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// metadata is the standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [EvictionRequestListLifecycleK8sIoV1alpha1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EvictionRequestListLifecycleK8sIoV1alpha1]. {@macro pulumi_lifecycle_k8s_io_v1alpha1_eviction_request_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EvictionRequestListLifecycleK8sIoV1alpha1(
    String name, {
    EvictionRequestListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:lifecycle.k8s.io/v1alpha1:EvictionRequestList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<EvictionRequest>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EvictionRequest>(guardedValue, (value) => EvictionRequest.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [EvictionRequestListLifecycleK8sIoV1alpha1] resource.
  EvictionRequestListLifecycleK8sIoV1alpha1.reference(String urn)
    : super(
        'kubernetes:lifecycle.k8s.io/v1alpha1:EvictionRequestList',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<EvictionRequest>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EvictionRequest>(guardedValue, (value) => EvictionRequest.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
