// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_health_check_compute_v1_args_doc}
/// Arguments for getHealthCheck.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_health_check_compute_v1_args_doc}
class GetHealthCheckComputeV1Args {
  final pulumi.Input<String> healthCheck;
  final pulumi.Input<String>? project;

  /// Creates a new [GetHealthCheckComputeV1Args].
  /// [healthCheck] Required.
  /// [project] Optional.
  GetHealthCheckComputeV1Args({
    required pulumi.Output<String> healthCheck,
    pulumi.Output<String>? project,
  }) :
      healthCheck = pulumi.Input.asInput<String>(healthCheck),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthCheck': healthCheck,
      'project': ?project,
    };
  }

  factory GetHealthCheckComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetHealthCheckComputeV1Args(
      healthCheck: pulumi.Output.create<String>(map['healthCheck'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

