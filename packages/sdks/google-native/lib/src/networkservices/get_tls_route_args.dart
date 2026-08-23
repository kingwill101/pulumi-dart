// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1_get_tls_route_args_doc}
/// Arguments for getTlsRoute.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1_get_tls_route_args_doc}
class GetTlsRouteArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> tlsRouteId;

  /// Creates a new [GetTlsRouteArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [tlsRouteId] Required.
  const GetTlsRouteArgs({
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

  factory GetTlsRouteArgs.fromMap(Map<String, dynamic> map) {
    return GetTlsRouteArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tlsRouteId: pulumi.Input.fromValue(map['tlsRouteId'] as String),
    );
  }
}
