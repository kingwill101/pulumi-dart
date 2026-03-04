import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'endpoints_args.dart';

/// Endpoints is a collection of endpoints that implement the actual service. Example:
///
/// Name: "mysvc",
/// Subsets: [
/// {
/// Addresses: [{"ip": "10.10.1.1"}, {"ip": "10.10.2.2"}],
/// Ports: [{"name": "a", "port": 8675}, {"name": "b", "port": 309}]
/// },
/// {
/// Addresses: [{"ip": "10.10.3.3"}],
/// Ports: [{"name": "a", "port": 93}, {"name": "b", "port": 76}]
/// },
/// ]
///
/// Endpoints is a legacy API and does not contain information about all Service features. Use discoveryv1.EndpointSlice for complete information about Service endpoints.
///
/// Deprecated: This API is deprecated in v1.33+. Use discoveryv1.EndpointSlice.
class EndpointsCoreV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  late final pulumi.Output<ObjectMeta> metadata;

  /// The set of all endpoints is the union of all subsets. Addresses are placed into subsets according to the IPs they share. A single address with multiple ports, some of which are ready and some of which are not (because they come from different containers) will result in the address being displayed in different subsets for the different ports. No address will appear in both Addresses and NotReadyAddresses in the same subset. Sets of addresses and ports that comprise a service.
  late final pulumi.Output<List<Map<String, dynamic>>> subsets;

  /// Creates a new [EndpointsCoreV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EndpointsCoreV1]. {@macro pulumi_core_v1_endpoints_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EndpointsCoreV1(
    String name, {
    EndpointsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:core/v1:Endpoints',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata');
    subsets = registerOutput<List<Map<String, dynamic>>>('subsets');
  }
}
