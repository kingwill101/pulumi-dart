// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_route_rule_networkservices_v1beta1.dart';

/// {@template pulumi_networkservices_v1beta1_http_route_networkservices_v1beta1_args_doc}
/// The set of arguments for HttpRoute.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1beta1_http_route_networkservices_v1beta1_args_doc}
class HttpRouteNetworkservicesV1beta1Args {
  /// Optional. A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;
  /// Optional. Gateways defines a list of gateways this HttpRoute is attached to, as one of the routing rules to route the requests served by the gateway. Each gateway reference should match the pattern: `projects/*/locations/global/gateways/`
  final pulumi.Input<List<String>>? gateways;
  /// Hostnames define a set of hosts that should match against the HTTP host header to select a HttpRoute to process the request. Hostname is the fully qualified domain name of a network host, as defined by RFC 1123 with the exception that: - IPs are not allowed. - A hostname may be prefixed with a wildcard label (`*.`). The wildcard label must appear by itself as the first label. Hostname can be "precise" which is a domain name without the terminating dot of a network host (e.g. `foo.example.com`) or "wildcard", which is a domain name prefixed with a single wildcard label (e.g. `*.example.com`). Note that as per RFC1035 and RFC1123, a label must consist of lower case alphanumeric characters or '-', and must start and end with an alphanumeric character. No other punctuation is allowed. The routes associated with a Mesh or Gateways must have unique hostnames. If you attempt to attach multiple routes with conflicting hostnames, the configuration will be rejected. For example, while it is acceptable for routes for the hostnames `*.foo.bar.com` and `*.bar.com` to be associated with the same Mesh (or Gateways under the same scope), it is not possible to associate two routes both with `*.bar.com` or both with `bar.com`.
  final pulumi.Input<List<String>> hostnames;
  /// Required. Short name of the HttpRoute resource to be created.
  final pulumi.Input<String> httpRouteId;
  /// Optional. Set of label tags associated with the HttpRoute resource.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Optional. Meshes defines a list of meshes this HttpRoute is attached to, as one of the routing rules to route the requests served by the mesh. Each mesh reference should match the pattern: `projects/*/locations/global/meshes/` The attached Mesh should be of a type SIDECAR
  final pulumi.Input<List<String>>? meshes;
  /// Name of the HttpRoute resource. It matches pattern `projects/*/locations/global/httpRoutes/http_route_name>`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Rules that define how traffic is routed and handled. Rules will be matched sequentially based on the RouteMatch specified for the rule.
  final pulumi.Input<List<HttpRouteRouteRuleNetworkservicesV1beta1>> rules;

  /// Creates a new [HttpRouteNetworkservicesV1beta1Args].
  /// [description] Optional. A free-text description of the resource. Max length 1024 characters.
  /// [gateways] Optional. Gateways defines a list of gateways this HttpRoute is attached to, as one of the routing rules to route the requests served by the gateway. Each gateway reference should match the pattern: `projects/*/locations/global/gateways/`
  /// [hostnames] Hostnames define a set of hosts that should match against the HTTP host header to select a HttpRoute to process the request. Hostname is the fully qualified domain name of a network host, as defined by RFC 1123 with the exception that: - IPs are not allowed. - A hostname may be prefixed with a wildcard label (`*.`). The wildcard label must appear by itself as the first label. Hostname can be "precise" which is a domain name without the terminating dot of a network host (e.g. `foo.example.com`) or "wildcard", which is a domain name prefixed with a single wildcard label (e.g. `*.example.com`). Note that as per RFC1035 and RFC1123, a label must consist of lower case alphanumeric characters or '-', and must start and end with an alphanumeric character. No other punctuation is allowed. The routes associated with a Mesh or Gateways must have unique hostnames. If you attempt to attach multiple routes with conflicting hostnames, the configuration will be rejected. For example, while it is acceptable for routes for the hostnames `*.foo.bar.com` and `*.bar.com` to be associated with the same Mesh (or Gateways under the same scope), it is not possible to associate two routes both with `*.bar.com` or both with `bar.com`.
  /// [httpRouteId] Required. Short name of the HttpRoute resource to be created.
  /// [labels] Optional. Set of label tags associated with the HttpRoute resource.
  /// [location] Optional.
  /// [meshes] Optional. Meshes defines a list of meshes this HttpRoute is attached to, as one of the routing rules to route the requests served by the mesh. Each mesh reference should match the pattern: `projects/*/locations/global/meshes/` The attached Mesh should be of a type SIDECAR
  /// [name] Name of the HttpRoute resource. It matches pattern `projects/*/locations/global/httpRoutes/http_route_name>`.
  /// [project] Optional.
  /// [rules] Rules that define how traffic is routed and handled. Rules will be matched sequentially based on the RouteMatch specified for the rule.
  HttpRouteNetworkservicesV1beta1Args({
    this.description,
    this.gateways,
    required this.hostnames,
    required this.httpRouteId,
    this.labels,
    this.location,
    this.meshes,
    this.name,
    this.project,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'gateways': ?gateways,
      'hostnames': hostnames,
      'httpRouteId': httpRouteId,
      'labels': ?labels,
      'location': ?location,
      'meshes': ?meshes,
      'name': ?name,
      'project': ?project,
      'rules': pulumi.Input.mapInputValue<List<HttpRouteRouteRuleNetworkservicesV1beta1>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<HttpRouteRouteRuleNetworkservicesV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory HttpRouteNetworkservicesV1beta1Args.fromMap(Map<String, dynamic> map) {
    return HttpRouteNetworkservicesV1beta1Args(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      gateways: map['gateways'] == null ? null : ((map['gateways']! as List).cast<String>()).input(),
      hostnames: ((map['hostnames'] as List).cast<String>()).input(),
      httpRouteId: (map['httpRouteId'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      meshes: map['meshes'] == null ? null : ((map['meshes']! as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      rules: (pulumi.Input.decodeList<HttpRouteRouteRuleNetworkservicesV1beta1>(map['rules'], (value) => HttpRouteRouteRuleNetworkservicesV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

