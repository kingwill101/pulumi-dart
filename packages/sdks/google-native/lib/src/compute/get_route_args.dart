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
  GetRouteArgs({this.project, required this.route});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'project': ?project, 'route': route};
  }

  factory GetRouteArgs.fromMap(Map<String, dynamic> map) {
    return GetRouteArgs(
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      route: pulumi.Input.fromValue(map['route'] as String),
    );
  }
}
