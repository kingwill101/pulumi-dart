// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_region_health_check_service_compute_beta_args_doc}
/// Arguments for getRegionHealthCheckService.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_region_health_check_service_compute_beta_args_doc}
class GetRegionHealthCheckServiceComputeBetaArgs {
  final pulumi.Input<String> healthCheckService;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetRegionHealthCheckServiceComputeBetaArgs].
  /// [healthCheckService] Required.
  /// [project] Optional.
  /// [region] Required.
  const GetRegionHealthCheckServiceComputeBetaArgs({
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

  factory GetRegionHealthCheckServiceComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionHealthCheckServiceComputeBetaArgs(
      healthCheckService: pulumi.Input.fromValue(map['healthCheckService'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
