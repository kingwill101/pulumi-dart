// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_route_compute_beta_args_doc}
/// Arguments for getRoute.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_route_compute_beta_args_doc}
class GetRouteComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> route;

  /// Creates a new [GetRouteComputeBetaArgs].
  /// [project] Optional.
  /// [route] Required.
  const GetRouteComputeBetaArgs({
    this.project,
    required this.route,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'route': route,
    };
  }

  factory GetRouteComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetRouteComputeBetaArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      route: pulumi.Input.fromValue(map['route'] as String),
    );
  }
}

