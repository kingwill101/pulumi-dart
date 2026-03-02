// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datastream_v1_get_route_args_doc}
/// Arguments for getRoute.
/// {@endtemplate}
/// {@macro pulumi_datastream_v1_get_route_args_doc}
class GetRouteArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> privateConnectionId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> routeId;

  /// Creates a new [GetRouteArgs].
  /// [location] Required.
  /// [privateConnectionId] Required.
  /// [project] Optional.
  /// [routeId] Required.
  GetRouteArgs({
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

  factory GetRouteArgs.fromMap(Map<String, dynamic> map) {
    return GetRouteArgs(
      location: (map['location'] as String).input(),
      privateConnectionId: (map['privateConnectionId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      routeId: (map['routeId'] as String).input(),
    );
  }
}

