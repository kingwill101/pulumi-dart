import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_networkservices_v1beta1_args.dart';

/// Creates a new HttpRoute in a given project and location.
class HttpRouteNetworkservicesV1beta1 extends pulumi.CustomResource {
  /// The timestamp when the resource was created.
  late final pulumi.Output<String> createTime;
  /// Optional. A free-text description of the resource. Max length 1024 characters.
  late final pulumi.Output<String> description;
  /// Optional. Gateways defines a list of gateways this HttpRoute is attached to, as one of the routing rules to route the requests served by the gateway. Each gateway reference should match the pattern: `projects/*/locations/global/gateways/`
  late final pulumi.Output<List<String>> gateways;
  /// Hostnames define a set of hosts that should match against the HTTP host header to select a HttpRoute to process the request. Hostname is the fully qualified domain name of a network host, as defined by RFC 1123 with the exception that: - IPs are not allowed. - A hostname may be prefixed with a wildcard label (`*.`). The wildcard label must appear by itself as the first label. Hostname can be "precise" which is a domain name without the terminating dot of a network host (e.g. `foo.example.com`) or "wildcard", which is a domain name prefixed with a single wildcard label (e.g. `*.example.com`). Note that as per RFC1035 and RFC1123, a label must consist of lower case alphanumeric characters or '-', and must start and end with an alphanumeric character. No other punctuation is allowed. The routes associated with a Mesh or Gateways must have unique hostnames. If you attempt to attach multiple routes with conflicting hostnames, the configuration will be rejected. For example, while it is acceptable for routes for the hostnames `*.foo.bar.com` and `*.bar.com` to be associated with the same Mesh (or Gateways under the same scope), it is not possible to associate two routes both with `*.bar.com` or both with `bar.com`.
  late final pulumi.Output<List<String>> hostnames;
  /// Required. Short name of the HttpRoute resource to be created.
  late final pulumi.Output<String> httpRouteId;
  /// Optional. Set of label tags associated with the HttpRoute resource.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// Optional. Meshes defines a list of meshes this HttpRoute is attached to, as one of the routing rules to route the requests served by the mesh. Each mesh reference should match the pattern: `projects/*/locations/global/meshes/` The attached Mesh should be of a type SIDECAR
  late final pulumi.Output<List<String>> meshes;
  /// Name of the HttpRoute resource. It matches pattern `projects/*/locations/global/httpRoutes/http_route_name&gt;`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Rules that define how traffic is routed and handled. Rules will be matched sequentially based on the RouteMatch specified for the rule.
  late final pulumi.Output<List<Map<String, dynamic>>> rules;
  /// Server-defined URL of this resource
  late final pulumi.Output<String> selfLink;
  /// The timestamp when the resource was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [HttpRouteNetworkservicesV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HttpRouteNetworkservicesV1beta1]. {@macro pulumi_networkservices_v1beta1_http_route_networkservices_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HttpRouteNetworkservicesV1beta1(
    String name, {
    HttpRouteNetworkservicesV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:networkservices/v1beta1:HttpRoute',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    gateways = registerOutput<List<String>>('gateways');
    hostnames = registerOutput<List<String>>('hostnames');
    httpRouteId = registerOutput<String>('httpRouteId');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    meshes = registerOutput<List<String>>('meshes');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    rules = registerOutput<List<Map<String, dynamic>>>('rules');
    selfLink = registerOutput<String>('selfLink');
    updateTime = registerOutput<String>('updateTime');
  }
}
