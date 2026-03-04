import 'package:pulumi/pulumi.dart' as pulumi;
import 'tls_route_args.dart';

/// Creates a new TlsRoute in a given project and location.
class TlsRoute extends pulumi.CustomResource {
  /// The timestamp when the resource was created.
  late final pulumi.Output<String> createTime;

  /// Optional. A free-text description of the resource. Max length 1024 characters.
  late final pulumi.Output<String> description;

  /// Optional. Gateways defines a list of gateways this TlsRoute is attached to, as one of the routing rules to route the requests served by the gateway. Each gateway reference should match the pattern: `projects/*/locations/global/gateways/`
  late final pulumi.Output<List<String>> gateways;

  /// Optional. Set of label tags associated with the TlsRoute resource.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Optional. Meshes defines a list of meshes this TlsRoute is attached to, as one of the routing rules to route the requests served by the mesh. Each mesh reference should match the pattern: `projects/*/locations/global/meshes/` The attached Mesh should be of a type SIDECAR
  late final pulumi.Output<List<String>> meshes;

  /// Name of the TlsRoute resource. It matches pattern `projects/*/locations/global/tlsRoutes/tls_route_name&gt;`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Rules that define how traffic is routed and handled. At least one RouteRule must be supplied. If there are multiple rules then the action taken will be the first rule to match.
  late final pulumi.Output<List<Map<String, dynamic>>> rules;

  /// Server-defined URL of this resource
  late final pulumi.Output<String> selfLink;

  /// Required. Short name of the TlsRoute resource to be created.
  late final pulumi.Output<String> tlsRouteId;

  /// The timestamp when the resource was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [TlsRoute].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TlsRoute]. {@macro pulumi_networkservices_v1_tls_route_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TlsRoute(
    String name, {
    TlsRouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:networkservices/v1:TlsRoute',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    gateways = registerOutput<List<String>>('gateways');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    meshes = registerOutput<List<String>>('meshes');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    rules = registerOutput<List<Map<String, dynamic>>>('rules');
    selfLink = registerOutput<String>('selfLink');
    tlsRouteId = registerOutput<String>('tlsRouteId');
    updateTime = registerOutput<String>('updateTime');
  }
}
