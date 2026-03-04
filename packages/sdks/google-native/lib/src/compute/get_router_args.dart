// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_router_args_doc}
/// Arguments for getRouter.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_router_args_doc}
class GetRouterArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> router;

  /// Creates a new [GetRouterArgs].
  /// [project] Optional.
  /// [region] Required.
  /// [router] Required.
  GetRouterArgs({this.project, required this.region, required this.router});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': region,
      'router': router,
    };
  }

  factory GetRouterArgs.fromMap(Map<String, dynamic> map) {
    return GetRouterArgs(
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      router: pulumi.Input.fromValue(map['router'] as String),
    );
  }
}
