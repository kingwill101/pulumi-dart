import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'endpoint_slice.dart';
import 'endpoint_slice_list_args.dart';

/// EndpointSliceList represents a list of endpoint slices
class EndpointSliceListDiscoveryK8sIoV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// items is the list of endpoint slices
  late final pulumi.Output<List<EndpointSlice>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard list metadata.
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [EndpointSliceListDiscoveryK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EndpointSliceListDiscoveryK8sIoV1]. {@macro pulumi_discovery_k8s_io_v1_endpoint_slice_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EndpointSliceListDiscoveryK8sIoV1(
    String name, {
    EndpointSliceListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:discovery.k8s.io/v1:EndpointSliceList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<EndpointSlice>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EndpointSlice>(guardedValue, (value) => EndpointSlice.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [EndpointSliceListDiscoveryK8sIoV1] resource.
  EndpointSliceListDiscoveryK8sIoV1.reference(String urn)
    : super(
        'kubernetes:discovery.k8s.io/v1:EndpointSliceList',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<EndpointSlice>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EndpointSlice>(guardedValue, (value) => EndpointSlice.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
