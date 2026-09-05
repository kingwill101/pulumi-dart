import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'resource_class_parameters.dart';
import 'resource_class_parameters_list_args.dart';

/// ResourceClassParametersList is a collection of ResourceClassParameters.
class ResourceClassParametersListResourceK8sIoV1alpha2 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Items is the list of node resource capacity objects.
  late final pulumi.Output<List<ResourceClassParameters>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard list metadata
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [ResourceClassParametersListResourceK8sIoV1alpha2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceClassParametersListResourceK8sIoV1alpha2]. {@macro pulumi_resource_k8s_io_v1alpha2_resource_class_parameters_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceClassParametersListResourceK8sIoV1alpha2(
    String name, {
    ResourceClassParametersListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:resource.k8s.io/v1alpha2:ResourceClassParametersList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<ResourceClassParameters>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceClassParameters>(guardedValue, (value) => ResourceClassParameters.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [ResourceClassParametersListResourceK8sIoV1alpha2] resource.
  ResourceClassParametersListResourceK8sIoV1alpha2.reference(String urn)
    : super(
        'kubernetes:resource.k8s.io/v1alpha2:ResourceClassParametersList',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<ResourceClassParameters>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceClassParameters>(guardedValue, (value) => ResourceClassParameters.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
