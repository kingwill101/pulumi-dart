// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1beta1_get_tls_route_networkservices_v1beta1_args_doc}
/// Arguments for getTlsRoute.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1beta1_get_tls_route_networkservices_v1beta1_args_doc}
class GetTlsRouteNetworkservicesV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> tlsRouteId;

  /// Creates a new [GetTlsRouteNetworkservicesV1beta1Args].
  /// [location] Required.
  /// [project] Optional.
  /// [tlsRouteId] Required.
  const GetTlsRouteNetworkservicesV1beta1Args({
    required this.location,
    this.project,
    required this.tlsRouteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'tlsRouteId': tlsRouteId,
    };
  }

  factory GetTlsRouteNetworkservicesV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetTlsRouteNetworkservicesV1beta1Args(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tlsRouteId: pulumi.Input.fromValue(map['tlsRouteId'] as String),
    );
  }
}
