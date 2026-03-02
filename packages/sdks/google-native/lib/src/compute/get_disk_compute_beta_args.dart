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
    required this.disk,
    this.project,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disk': disk,
      'project': ?project,
      'zone': zone,
    };
  }

  factory GetDiskComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetDiskComputeBetaArgs(
      disk: (map['disk'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      zone: (map['zone'] as String).input(),
    );
  }
}

