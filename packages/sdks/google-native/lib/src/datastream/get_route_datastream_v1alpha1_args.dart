// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datastream_v1alpha1_get_route_datastream_v1alpha1_args_doc}
/// Arguments for getRoute.
/// {@endtemplate}
/// {@macro pulumi_datastream_v1alpha1_get_route_datastream_v1alpha1_args_doc}
class GetRouteDatastreamV1alpha1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> privateConnectionId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> routeId;

  /// Creates a new [GetRouteDatastreamV1alpha1Args].
  /// [location] Required.
  /// [privateConnectionId] Required.
  /// [project] Optional.
  /// [routeId] Required.
  const GetRouteDatastreamV1alpha1Args({
    required this.location,
    required this.privateConnectionId,
    this.project,
    required this.routeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'privateConnectionId': privateConnectionId,
      'project': ?project,
      'routeId': routeId,
    };
  }

  factory GetRouteDatastreamV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return GetRouteDatastreamV1alpha1Args(
      location: pulumi.Input.fromValue(map['location'] as String),
      privateConnectionId: pulumi.Input.fromValue(map['privateConnectionId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeId: pulumi.Input.fromValue(map['routeId'] as String),
    );
  }
}
