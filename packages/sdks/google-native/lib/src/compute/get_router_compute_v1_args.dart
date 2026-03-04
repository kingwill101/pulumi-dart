// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_router_compute_v1_args_doc}
/// Arguments for getRouter.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_router_compute_v1_args_doc}
class GetRouterComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> router;

  /// Creates a new [GetRouterComputeV1Args].
  /// [project] Optional.
  /// [region] Required.
  /// [router] Required.
  GetRouterComputeV1Args({
    this.project,
    required this.region,
    required this.router,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': region,
      'router': router,
    };
  }

  factory GetRouterComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetRouterComputeV1Args(
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
