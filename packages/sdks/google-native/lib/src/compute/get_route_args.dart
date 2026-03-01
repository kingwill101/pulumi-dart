// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_route_args_doc}
/// Arguments for getRoute.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_route_args_doc}
class GetRouteArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> route;

  /// Creates a new [GetRouteArgs].
  /// [project] Optional.
  /// [route] Required.
  GetRouteArgs({
    pulumi.Output<String>? project,
    required pulumi.Output<String> route,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      route = pulumi.Input.asInput<String>(route);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'route': route,
    };
  }

  factory GetRouteArgs.fromMap(Map<String, dynamic> map) {
    return GetRouteArgs(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      route: pulumi.Output.create<String>(map['route'] as String),
    );
  }
}

