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
  GetRegionHealthCheckServiceComputeV1Args({
    required pulumi.Output<String> healthCheckService,
    pulumi.Output<String>? project,
    required pulumi.Output<String> region,
  }) :
      healthCheckService = pulumi.Input.asInput<String>(healthCheckService),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthCheckService': healthCheckService,
      'project': ?project,
      'region': region,
    };
  }

  factory GetRegionHealthCheckServiceComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetRegionHealthCheckServiceComputeV1Args(
      healthCheckService: pulumi.Output.create<String>(map['healthCheckService'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

