import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'service_cidr.dart';
import 'service_cidrlist_args.dart';

/// ServiceCIDRList contains a list of ServiceCIDR objects.
class ServiceCIDRListNetworkingK8sIoV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// items is the list of ServiceCIDRs.
  late final pulumi.Output<List<ServiceCIDR>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [ServiceCIDRListNetworkingK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceCIDRListNetworkingK8sIoV1]. {@macro pulumi_networking_k8s_io_v1_service_cidrlist_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceCIDRListNetworkingK8sIoV1(
    String name, {
    ServiceCIDRListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:networking.k8s.io/v1:ServiceCIDRList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<ServiceCIDR>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ServiceCIDR>(guardedValue, (value) => ServiceCIDR.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [ServiceCIDRListNetworkingK8sIoV1] resource.
  ServiceCIDRListNetworkingK8sIoV1.reference(String urn)
    : super(
        'kubernetes:networking.k8s.io/v1:ServiceCIDRList',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<ServiceCIDR>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ServiceCIDR>(guardedValue, (value) => ServiceCIDR.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
