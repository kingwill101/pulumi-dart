import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'endpoint_slice_discovery_k8s_io_v1beta1.dart';
import 'endpoint_slice_list_discovery_k8s_io_v1beta1_args.dart';

/// EndpointSliceList represents a list of endpoint slices
class EndpointSliceListResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// List of endpoint slices
  late final pulumi.Output<List<EndpointSliceDiscoveryK8sIoV1beta1>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard list metadata.
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [EndpointSliceListResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EndpointSliceListResource]. {@macro pulumi_discovery_k8s_io_v1beta1_endpoint_slice_list_discovery_k8s_io_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EndpointSliceListResource(
    String name, {
    EndpointSliceListDiscoveryK8sIoV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:discovery.k8s.io/v1beta1:EndpointSliceList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<EndpointSliceDiscoveryK8sIoV1beta1>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EndpointSliceDiscoveryK8sIoV1beta1>(guardedValue, (value) => EndpointSliceDiscoveryK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [EndpointSliceListResource] resource.
  EndpointSliceListResource.reference(String urn)
    : super(
        'kubernetes:discovery.k8s.io/v1beta1:EndpointSliceList',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<EndpointSliceDiscoveryK8sIoV1beta1>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EndpointSliceDiscoveryK8sIoV1beta1>(guardedValue, (value) => EndpointSliceDiscoveryK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
