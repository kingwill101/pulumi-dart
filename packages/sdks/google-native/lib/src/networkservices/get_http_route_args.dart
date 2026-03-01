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
  GetHttpRouteArgs({
    required pulumi.Output<String> httpRouteId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      httpRouteId = pulumi.Input.asInput<String>(httpRouteId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpRouteId': httpRouteId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetHttpRouteArgs.fromMap(Map<String, dynamic> map) {
    return GetHttpRouteArgs(
      httpRouteId: pulumi.Output.create<String>(map['httpRouteId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

