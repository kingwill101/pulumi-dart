// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grpc_route_route_rule_networkservices_v1beta1.dart';

/// {@template pulumi_networkservices_v1beta1_grpc_route_networkservices_v1beta1_args_doc}
/// The set of arguments for GrpcRoute.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1beta1_grpc_route_networkservices_v1beta1_args_doc}
class GrpcRouteNetworkservicesV1beta1Args {
  /// Optional. A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;
  /// Optional. Gateways defines a list of gateways this GrpcRoute is attached to, as one of the routing rules to route the requests served by the gateway. Each gateway reference should match the pattern: `projects/*/locations/global/gateways/`
  final pulumi.Input<List<String>>? gateways;
  /// Required. Short name of the GrpcRoute resource to be created.
  final pulumi.Input<String> grpcRouteId;
  /// Service hostnames with an optional port for which this route describes traffic. Format: [:] Hostname is the fully qualified domain name of a network host. This matches the RFC 1123 definition of a hostname with 2 notable exceptions: - IPs are not allowed. - A hostname may be prefixed with a wildcard label (`*.`). The wildcard label must appear by itself as the first label. Hostname can be "precise" which is a domain name without the terminating dot of a network host (e.g. `foo.example.com`) or "wildcard", which is a domain name prefixed with a single wildcard label (e.g. `*.example.com`). Note that as per RFC1035 and RFC1123, a label must consist of lower case alphanumeric characters or '-', and must start and end with an alphanumeric character. No other punctuation is allowed. The routes associated with a Mesh or Gateway must have unique hostnames. If you attempt to attach multiple routes with conflicting hostnames, the configuration will be rejected. For example, while it is acceptable for routes for the hostnames `*.foo.bar.com` and `*.bar.com` to be associated with the same route, it is not possible to associate two routes both with `*.bar.com` or both with `bar.com`. If a port is specified, then gRPC clients must use the channel URI with the port to match this rule (i.e. "xds:///service:123"), otherwise they must supply the URI without a port (i.e. "xds:///service").
  final pulumi.Input<List<String>> hostnames;
  /// Optional. Set of label tags associated with the GrpcRoute resource.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Optional. Meshes defines a list of meshes this GrpcRoute is attached to, as one of the routing rules to route the requests served by the mesh. Each mesh reference should match the pattern: `projects/*/locations/global/meshes/`
  final pulumi.Input<List<String>>? meshes;
  /// Name of the GrpcRoute resource. It matches pattern `projects/*/locations/global/grpcRoutes/`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// A list of detailed rules defining how to route traffic. Within a single GrpcRoute, the GrpcRoute.RouteAction associated with the first matching GrpcRoute.RouteRule will be executed. At least one rule must be supplied.
  final pulumi.Input<List<GrpcRouteRouteRuleNetworkservicesV1beta1>> rules;

  /// Creates a new [GrpcRouteNetworkservicesV1beta1Args].
  /// [description] Optional. A free-text description of the resource. Max length 1024 characters.
  /// [gateways] Optional. Gateways defines a list of gateways this GrpcRoute is attached to, as one of the routing rules to route the requests served by the gateway. Each gateway reference should match the pattern: `projects/*/locations/global/gateways/`
  /// [grpcRouteId] Required. Short name of the GrpcRoute resource to be created.
  /// [hostnames] Service hostnames with an optional port for which this route describes traffic. Format: [:] Hostname is the fully qualified domain name of a network host. This matches the RFC 1123 definition of a hostname with 2 notable exceptions: - IPs are not allowed. - A hostname may be prefixed with a wildcard label (`*.`). The wildcard label must appear by itself as the first label. Hostname can be "precise" which is a domain name without the terminating dot of a network host (e.g. `foo.example.com`) or "wildcard", which is a domain name prefixed with a single wildcard label (e.g. `*.example.com`). Note that as per RFC1035 and RFC1123, a label must consist of lower case alphanumeric characters or '-', and must start and end with an alphanumeric character. No other punctuation is allowed. The routes associated with a Mesh or Gateway must have unique hostnames. If you attempt to attach multiple routes with conflicting hostnames, the configuration will be rejected. For example, while it is acceptable for routes for the hostnames `*.foo.bar.com` and `*.bar.com` to be associated with the same route, it is not possible to associate two routes both with `*.bar.com` or both with `bar.com`. If a port is specified, then gRPC clients must use the channel URI with the port to match this rule (i.e. "xds:///service:123"), otherwise they must supply the URI without a port (i.e. "xds:///service").
  /// [labels] Optional. Set of label tags associated with the GrpcRoute resource.
  /// [location] Optional.
  /// [meshes] Optional. Meshes defines a list of meshes this GrpcRoute is attached to, as one of the routing rules to route the requests served by the mesh. Each mesh reference should match the pattern: `projects/*/locations/global/meshes/`
  /// [name] Name of the GrpcRoute resource. It matches pattern `projects/*/locations/global/grpcRoutes/`
  /// [project] Optional.
  /// [rules] A list of detailed rules defining how to route traffic. Within a single GrpcRoute, the GrpcRoute.RouteAction associated with the first matching GrpcRoute.RouteRule will be executed. At least one rule must be supplied.
  GrpcRouteNetworkservicesV1beta1Args({
    pulumi.Output<String>? description,
    pulumi.Output<List<String>>? gateways,
    required pulumi.Output<String> grpcRouteId,
    required pulumi.Output<List<String>> hostnames,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<List<String>>? meshes,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    required pulumi.Output<List<GrpcRouteRouteRuleNetworkservicesV1beta1>> rules,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      gateways = pulumi.Input.asOptionalInput<List<String>>(gateways),
      grpcRouteId = pulumi.Input.asInput<String>(grpcRouteId),
      hostnames = pulumi.Input.asInput<List<String>>(hostnames),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      meshes = pulumi.Input.asOptionalInput<List<String>>(meshes),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      rules = pulumi.Input.asInput<List<GrpcRouteRouteRuleNetworkservicesV1beta1>>(rules);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'gateways': ?gateways,
      'grpcRouteId': grpcRouteId,
      'hostnames': hostnames,
      'labels': ?labels,
      'location': ?location,
      'meshes': ?meshes,
      'name': ?name,
      'project': ?project,
      'rules': pulumi.Input.mapInputValue<List<GrpcRouteRouteRuleNetworkservicesV1beta1>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<GrpcRouteRouteRuleNetworkservicesV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GrpcRouteNetworkservicesV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GrpcRouteNetworkservicesV1beta1Args(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      gateways: map['gateways'] == null ? null : pulumi.Output.create<List<String>>((map['gateways'] as List).cast<String>()),
      grpcRouteId: pulumi.Output.create<String>(map['grpcRouteId'] as String),
      hostnames: pulumi.Output.create<List<String>>((map['hostnames'] as List).cast<String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      meshes: map['meshes'] == null ? null : pulumi.Output.create<List<String>>((map['meshes'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      rules: pulumi.Output.create<List<GrpcRouteRouteRuleNetworkservicesV1beta1>>(pulumi.Input.decodeList<GrpcRouteRouteRuleNetworkservicesV1beta1>(map['rules'], (value) => GrpcRouteRouteRuleNetworkservicesV1beta1.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

