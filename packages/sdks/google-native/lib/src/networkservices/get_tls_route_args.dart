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
  GetTlsRouteArgs({
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> tlsRouteId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      tlsRouteId = pulumi.Input.asInput<String>(tlsRouteId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'tlsRouteId': tlsRouteId,
    };
  }

  factory GetTlsRouteArgs.fromMap(Map<String, dynamic> map) {
    return GetTlsRouteArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      tlsRouteId: pulumi.Output.create<String>(map['tlsRouteId'] as String),
    );
  }
}

