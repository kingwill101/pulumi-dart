// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_disk_compute_beta_args_doc}
/// Arguments for getDisk.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_disk_compute_beta_args_doc}
class GetDiskComputeBetaArgs {
  final pulumi.Input<String> disk;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  /// Creates a new [GetDiskComputeBetaArgs].
  /// [disk] Required.
  /// [project] Optional.
  /// [zone] Required.
  GetDiskComputeBetaArgs({
    required pulumi.Output<String> disk,
    pulumi.Output<String>? project,
    required pulumi.Output<String> zone,
  }) :
      disk = pulumi.Input.asInput<String>(disk),
      project = pulumi.Input.asOptionalInput<String>(project),
      zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disk': disk,
      'project': ?project,
      'zone': zone,
    };
  }

  factory GetDiskComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetDiskComputeBetaArgs(
      disk: pulumi.Output.create<String>(map['disk'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      zone: pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

