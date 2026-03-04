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

  factory GetRegionHealthCheckArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionHealthCheckArgs(
      healthCheck: pulumi.Input.fromValue(map['healthCheck'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
