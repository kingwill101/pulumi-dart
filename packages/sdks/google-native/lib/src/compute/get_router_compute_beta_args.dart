// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_router_compute_beta_args_doc}
/// Arguments for getRouter.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_router_compute_beta_args_doc}
class GetRouterComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> router;

  /// Creates a new [GetRouterComputeBetaArgs].
  /// [project] Optional.
  /// [region] Required.
  /// [router] Required.
  GetRouterComputeBetaArgs({
    pulumi.Output<String>? project,
    required pulumi.Output<String> region,
    required pulumi.Output<String> router,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region),
      router = pulumi.Input.asInput<String>(router);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': region,
      'router': router,
    };
  }

  factory GetRouterComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetRouterComputeBetaArgs(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
      router: pulumi.Output.create<String>(map['router'] as String),
    );
  }
}

