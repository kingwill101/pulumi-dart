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
    required this.healthCheck,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthCheck': healthCheck,
      'project': ?project,
    };
  }

  factory GetHealthCheckComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetHealthCheckComputeV1Args(
      healthCheck: (map['healthCheck'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

