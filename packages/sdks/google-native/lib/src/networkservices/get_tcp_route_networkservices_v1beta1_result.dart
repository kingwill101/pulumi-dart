// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tcp_route_route_rule_response_networkservices_v1beta1.dart';

/// Result data returned by getTcpRoute.
class GetTcpRouteNetworkservicesV1beta1Result {
  /// The timestamp when the resource was created.
  final String createTime;
  /// Optional. A free-text description of the resource. Max length 1024 characters.
  final String description;
  /// Optional. Gateways defines a list of gateways this TcpRoute is attached to, as one of the routing rules to route the requests served by the gateway. Each gateway reference should match the pattern: `projects/*/locations/global/gateways/`
  final List<String> gateways;
  /// Optional. Set of label tags associated with the TcpRoute resource.
  final Map<String, String> labels;
  /// Optional. Meshes defines a list of meshes this TcpRoute is attached to, as one of the routing rules to route the requests served by the mesh. Each mesh reference should match the pattern: `projects/*/locations/global/meshes/` The attached Mesh should be of a type SIDECAR
  final List<String> meshes;
  /// Name of the TcpRoute resource. It matches pattern `projects/*/locations/global/tcpRoutes/tcp_route_name&gt;`.
  final String name;
  /// Rules that define how traffic is routed and handled. At least one RouteRule must be supplied. If there are multiple rules then the action taken will be the first rule to match.
  final List<TcpRouteRouteRuleResponseNetworkservicesV1beta1> rules;
  /// Server-defined URL of this resource
  final String selfLink;
  /// The timestamp when the resource was updated.
  final String updateTime;

  /// Creates a new [GetTcpRouteNetworkservicesV1beta1Result].
  /// [createTime] The timestamp when the resource was created.
  /// [description] Optional. A free-text description of the resource. Max length 1024 characters.
  /// [gateways] Optional. Gateways defines a list of gateways this TcpRoute is attached to, as one of the routing rules to route the requests served by the gateway. Each gateway reference should match the pattern: `projects/*/locations/global/gateways/`
  /// [labels] Optional. Set of label tags associated with the TcpRoute resource.
  /// [meshes] Optional. Meshes defines a list of meshes this TcpRoute is attached to, as one of the routing rules to route the requests served by the mesh. Each mesh reference should match the pattern: `projects/*/locations/global/meshes/` The attached Mesh should be of a type SIDECAR
  /// [name] Name of the TcpRoute resource. It matches pattern `projects/*/locations/global/tcpRoutes/tcp_route_name&gt;`.
  /// [rules] Rules that define how traffic is routed and handled. At least one RouteRule must be supplied. If there are multiple rules then the action taken will be the first rule to match.
  /// [selfLink] Server-defined URL of this resource
  /// [updateTime] The timestamp when the resource was updated.
  const GetTcpRouteNetworkservicesV1beta1Result({
    required this.createTime,
    required this.description,
    required this.gateways,
    required this.labels,
    required this.meshes,
    required this.name,
    required this.rules,
    required this.selfLink,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'gateways': gateways,
      'labels': labels,
      'meshes': meshes,
      'name': name,
      'rules': pulumi.Input.encodeList<TcpRouteRouteRuleResponseNetworkservicesV1beta1, Map<String, dynamic>>(rules, (value) => value.toMap()),
      'selfLink': selfLink,
      'updateTime': updateTime,
    };
  }

  factory GetTcpRouteNetworkservicesV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetTcpRouteNetworkservicesV1beta1Result(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      gateways: (map['gateways'] as List).cast<String>(),
      labels: (map['labels'] as Map).cast<String, String>(),
      meshes: (map['meshes'] as List).cast<String>(),
      name: map['name'] as String,
      rules: pulumi.Input.decodeList<TcpRouteRouteRuleResponseNetworkservicesV1beta1>(map['rules']!, (value) => TcpRouteRouteRuleResponseNetworkservicesV1beta1.fromMap((value as Map).cast<String, dynamic>())),
      selfLink: map['selfLink'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
