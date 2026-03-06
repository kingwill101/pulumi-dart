// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_region_health_check_compute_v1_args_doc}
/// Arguments for getRegionHealthCheck.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_region_health_check_compute_v1_args_doc}
class GetRegionHealthCheckComputeV1Args {
  final pulumi.Input<String> healthCheck;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetRegionHealthCheckComputeV1Args].
  /// [healthCheck] Required.
  /// [project] Optional.
  /// [region] Required.
  const GetRegionHealthCheckComputeV1Args({
    required this.healthCheck,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthCheck': healthCheck,
      'project': ?project,
      'region': region,
    };
  }

  factory GetRegionHealthCheckComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetRegionHealthCheckComputeV1Args(
      healthCheck: pulumi.Input.fromValue(map['healthCheck'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}

