// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_region_disk_compute_beta_args_doc}
/// Arguments for getRegionDisk.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_region_disk_compute_beta_args_doc}
class GetRegionDiskComputeBetaArgs {
  final pulumi.Input<String> disk;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetRegionDiskComputeBetaArgs].
  /// [disk] Required.
  /// [project] Optional.
  /// [region] Required.
  const GetRegionDiskComputeBetaArgs({
    required this.disk,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disk': disk,
      'project': ?project,
      'region': region,
    };
  }

  factory GetRegionDiskComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionDiskComputeBetaArgs(
      disk: pulumi.Input.fromValue(map['disk'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}

