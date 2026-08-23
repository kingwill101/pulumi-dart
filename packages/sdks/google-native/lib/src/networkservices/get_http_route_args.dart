// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1_get_http_route_args_doc}
/// Arguments for getHttpRoute.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1_get_http_route_args_doc}
class GetHttpRouteArgs {
  final pulumi.Input<String> httpRouteId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetHttpRouteArgs].
  /// [httpRouteId] Required.
  /// [location] Required.
  /// [project] Optional.
  const GetHttpRouteArgs({
    required this.httpRouteId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpRouteId': httpRouteId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetHttpRouteArgs.fromMap(Map<String, dynamic> map) {
    return GetHttpRouteArgs(
      httpRouteId: pulumi.Input.fromValue(map['httpRouteId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
