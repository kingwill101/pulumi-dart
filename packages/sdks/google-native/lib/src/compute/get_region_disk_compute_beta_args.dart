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
  GetRegionDiskComputeBetaArgs({
    required pulumi.Output<String> disk,
    pulumi.Output<String>? project,
    required pulumi.Output<String> region,
  }) :
      disk = pulumi.Input.asInput<String>(disk),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disk': disk,
      'project': ?project,
      'region': region,
    };
  }

  factory GetRegionDiskComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionDiskComputeBetaArgs(
      disk: pulumi.Output.create<String>(map['disk'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

