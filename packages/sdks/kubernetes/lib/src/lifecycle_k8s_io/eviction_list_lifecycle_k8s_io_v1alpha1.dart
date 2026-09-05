import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'eviction.dart';
import 'eviction_list_args.dart';

/// EvictionList contains a list of Eviction resources.
class EvictionListLifecycleK8sIoV1alpha1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// items is the list of Evictions.
  late final pulumi.Output<List<Eviction>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// metadata is the standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [EvictionListLifecycleK8sIoV1alpha1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EvictionListLifecycleK8sIoV1alpha1]. {@macro pulumi_lifecycle_k8s_io_v1alpha1_eviction_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EvictionListLifecycleK8sIoV1alpha1(
    String name, {
    EvictionListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:lifecycle.k8s.io/v1alpha1:EvictionList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<Eviction>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<Eviction>(guardedValue, (value) => Eviction.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [EvictionListLifecycleK8sIoV1alpha1] resource.
  EvictionListLifecycleK8sIoV1alpha1.reference(String urn)
    : super(
        'kubernetes:lifecycle.k8s.io/v1alpha1:EvictionList',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<Eviction>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<Eviction>(guardedValue, (value) => Eviction.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
