// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tls_route_route_rule_networkservices_v1beta1.dart';

/// {@template pulumi_networkservices_v1beta1_tls_route_networkservices_v1beta1_args_doc}
/// The set of arguments for TlsRoute.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1beta1_tls_route_networkservices_v1beta1_args_doc}
class TlsRouteNetworkservicesV1beta1Args {
  /// Optional. A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;

  /// Optional. Gateways defines a list of gateways this TlsRoute is attached to, as one of the routing rules to route the requests served by the gateway. Each gateway reference should match the pattern: `projects/*/locations/global/gateways/`
  final pulumi.Input<List<String>>? gateways;

  /// Optional. Set of label tags associated with the TlsRoute resource.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Optional. Meshes defines a list of meshes this TlsRoute is attached to, as one of the routing rules to route the requests served by the mesh. Each mesh reference should match the pattern: `projects/*/locations/global/meshes/` The attached Mesh should be of a type SIDECAR
  final pulumi.Input<List<String>>? meshes;

  /// Name of the TlsRoute resource. It matches pattern `projects/*/locations/global/tlsRoutes/tls_route_name&gt;`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Rules that define how traffic is routed and handled. At least one RouteRule must be supplied. If there are multiple rules then the action taken will be the first rule to match.
  final pulumi.Input<List<TlsRouteRouteRuleNetworkservicesV1beta1>> rules;

  /// Required. Short name of the TlsRoute resource to be created.
  final pulumi.Input<String> tlsRouteId;

  /// Creates a new [TlsRouteNetworkservicesV1beta1Args].
  /// [description] Optional. A free-text description of the resource. Max length 1024 characters.
  /// [gateways] Optional. Gateways defines a list of gateways this TlsRoute is attached to, as one of the routing rules to route the requests served by the gateway. Each gateway reference should match the pattern: `projects/*/locations/global/gateways/`
  /// [labels] Optional. Set of label tags associated with the TlsRoute resource.
  /// [location] Optional.
  /// [meshes] Optional. Meshes defines a list of meshes this TlsRoute is attached to, as one of the routing rules to route the requests served by the mesh. Each mesh reference should match the pattern: `projects/*/locations/global/meshes/` The attached Mesh should be of a type SIDECAR
  /// [name] Name of the TlsRoute resource. It matches pattern `projects/*/locations/global/tlsRoutes/tls_route_name&gt;`.
  /// [project] Optional.
  /// [rules] Rules that define how traffic is routed and handled. At least one RouteRule must be supplied. If there are multiple rules then the action taken will be the first rule to match.
  /// [tlsRouteId] Required. Short name of the TlsRoute resource to be created.
  TlsRouteNetworkservicesV1beta1Args({
    this.description,
    this.gateways,
    this.labels,
    this.location,
    this.meshes,
    this.name,
    this.project,
    required this.rules,
    required this.tlsRouteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'gateways': ?gateways,
      'labels': ?labels,
      'location': ?location,
      'meshes': ?meshes,
      'name': ?name,
      'project': ?project,
      'rules':
          pulumi.Input.mapInputValue<
            List<TlsRouteRouteRuleNetworkservicesV1beta1>,
            List<Map<String, dynamic>>
          >(
            rules,
            (value) =>
                pulumi.Input.encodeList<
                  TlsRouteRouteRuleNetworkservicesV1beta1,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'tlsRouteId': tlsRouteId,
    };
  }

  factory TlsRouteNetworkservicesV1beta1Args.fromMap(Map<String, dynamic> map) {
    return TlsRouteNetworkservicesV1beta1Args(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gateways: (() {
        final guardedValue = map['gateways'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      meshes: (() {
        final guardedValue = map['meshes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rules: pulumi.Input.fromValue(
        pulumi.Input.decodeList<TlsRouteRouteRuleNetworkservicesV1beta1>(
          map['rules']!,
          (value) => TlsRouteRouteRuleNetworkservicesV1beta1.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      tlsRouteId: pulumi.Input.fromValue(map['tlsRouteId'] as String),
    );
  }
}
