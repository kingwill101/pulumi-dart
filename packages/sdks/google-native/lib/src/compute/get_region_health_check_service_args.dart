// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_region_health_check_service_args_doc}
/// Arguments for getRegionHealthCheckService.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_region_health_check_service_args_doc}
class GetRegionHealthCheckServiceArgs {
  final pulumi.Input<String> healthCheckService;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetRegionHealthCheckServiceArgs].
  /// [healthCheckService] Required.
  /// [project] Optional.
  /// [region] Required.
  GetRegionHealthCheckServiceArgs({
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

  factory GetRegionHealthCheckServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionHealthCheckServiceArgs(
      healthCheckService: pulumi.Output.create<String>(map['healthCheckService'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

