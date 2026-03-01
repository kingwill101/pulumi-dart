// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_region_health_check_args_doc}
/// Arguments for getRegionHealthCheck.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_region_health_check_args_doc}
class GetRegionHealthCheckArgs {
  final pulumi.Input<String> healthCheck;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetRegionHealthCheckArgs].
  /// [healthCheck] Required.
  /// [project] Optional.
  /// [region] Required.
  GetRegionHealthCheckArgs({
    required pulumi.Output<String> healthCheck,
    pulumi.Output<String>? project,
    required pulumi.Output<String> region,
  }) :
      healthCheck = pulumi.Input.asInput<String>(healthCheck),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthCheck': healthCheck,
      'project': ?project,
      'region': region,
    };
  }

  factory GetRegionHealthCheckArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionHealthCheckArgs(
      healthCheck: pulumi.Output.create<String>(map['healthCheck'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

