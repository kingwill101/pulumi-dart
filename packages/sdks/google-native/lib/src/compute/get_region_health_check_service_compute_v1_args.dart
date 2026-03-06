// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_region_health_check_service_compute_v1_args_doc}
/// Arguments for getRegionHealthCheckService.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_region_health_check_service_compute_v1_args_doc}
class GetRegionHealthCheckServiceComputeV1Args {
  final pulumi.Input<String> healthCheckService;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetRegionHealthCheckServiceComputeV1Args].
  /// [healthCheckService] Required.
  /// [project] Optional.
  /// [region] Required.
  const GetRegionHealthCheckServiceComputeV1Args({
    required this.healthCheckService,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthCheckService': healthCheckService,
      'project': ?project,
      'region': region,
    };
  }

  factory GetRegionHealthCheckServiceComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetRegionHealthCheckServiceComputeV1Args(
      healthCheckService: pulumi.Input.fromValue(map['healthCheckService'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}

