// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tcp_route_route_rule_networkservices_v1beta1.dart';

/// {@template pulumi_networkservices_v1beta1_tcp_route_networkservices_v1beta1_args_doc}
/// The set of arguments for TcpRoute.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1beta1_tcp_route_networkservices_v1beta1_args_doc}
class TcpRouteNetworkservicesV1beta1Args {
  /// Optional. A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;
  /// Optional. Gateways defines a list of gateways this TcpRoute is attached to, as one of the routing rules to route the requests served by the gateway. Each gateway reference should match the pattern: `projects/*/locations/global/gateways/`
  final pulumi.Input<List<String>>? gateways;
  /// Optional. Set of label tags associated with the TcpRoute resource.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Optional. Meshes defines a list of meshes this TcpRoute is attached to, as one of the routing rules to route the requests served by the mesh. Each mesh reference should match the pattern: `projects/*/locations/global/meshes/` The attached Mesh should be of a type SIDECAR
  final pulumi.Input<List<String>>? meshes;
  /// Name of the TcpRoute resource. It matches pattern `projects/*/locations/global/tcpRoutes/tcp_route_name>`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Rules that define how traffic is routed and handled. At least one RouteRule must be supplied. If there are multiple rules then the action taken will be the first rule to match.
  final pulumi.Input<List<TcpRouteRouteRuleNetworkservicesV1beta1>> rules;
  /// Required. Short name of the TcpRoute resource to be created.
  final pulumi.Input<String> tcpRouteId;

  /// Creates a new [TcpRouteNetworkservicesV1beta1Args].
  /// [description] Optional. A free-text description of the resource. Max length 1024 characters.
  /// [gateways] Optional. Gateways defines a list of gateways this TcpRoute is attached to, as one of the routing rules to route the requests served by the gateway. Each gateway reference should match the pattern: `projects/*/locations/global/gateways/`
  /// [labels] Optional. Set of label tags associated with the TcpRoute resource.
  /// [location] Optional.
  /// [meshes] Optional. Meshes defines a list of meshes this TcpRoute is attached to, as one of the routing rules to route the requests served by the mesh. Each mesh reference should match the pattern: `projects/*/locations/global/meshes/` The attached Mesh should be of a type SIDECAR
  /// [name] Name of the TcpRoute resource. It matches pattern `projects/*/locations/global/tcpRoutes/tcp_route_name>`.
  /// [project] Optional.
  /// [rules] Rules that define how traffic is routed and handled. At least one RouteRule must be supplied. If there are multiple rules then the action taken will be the first rule to match.
  /// [tcpRouteId] Required. Short name of the TcpRoute resource to be created.
  TcpRouteNetworkservicesV1beta1Args({
    pulumi.Output<String>? description,
    pulumi.Output<List<String>>? gateways,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<List<String>>? meshes,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    required pulumi.Output<List<TcpRouteRouteRuleNetworkservicesV1beta1>> rules,
    required pulumi.Output<String> tcpRouteId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      gateways = pulumi.Input.asOptionalInput<List<String>>(gateways),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      meshes = pulumi.Input.asOptionalInput<List<String>>(meshes),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      rules = pulumi.Input.asInput<List<TcpRouteRouteRuleNetworkservicesV1beta1>>(rules),
      tcpRouteId = pulumi.Input.asInput<String>(tcpRouteId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'gateways': ?gateways,
      'labels': ?labels,
      'location': ?location,
      'meshes': ?meshes,
      'name': ?name,
      'project': ?project,
      'rules': pulumi.Input.mapInputValue<List<TcpRouteRouteRuleNetworkservicesV1beta1>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<TcpRouteRouteRuleNetworkservicesV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tcpRouteId': tcpRouteId,
    };
  }

  factory TcpRouteNetworkservicesV1beta1Args.fromMap(Map<String, dynamic> map) {
    return TcpRouteNetworkservicesV1beta1Args(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      gateways: map['gateways'] == null ? null : pulumi.Output.create<List<String>>((map['gateways'] as List).cast<String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      meshes: map['meshes'] == null ? null : pulumi.Output.create<List<String>>((map['meshes'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      rules: pulumi.Output.create<List<TcpRouteRouteRuleNetworkservicesV1beta1>>(pulumi.Input.decodeList<TcpRouteRouteRuleNetworkservicesV1beta1>(map['rules'], (value) => TcpRouteRouteRuleNetworkservicesV1beta1.fromMap((value as Map).cast<String, dynamic>()))),
      tcpRouteId: pulumi.Output.create<String>(map['tcpRouteId'] as String),
    );
  }
}

