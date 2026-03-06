// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_disk_compute_v1_args_doc}
/// Arguments for getDisk.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_disk_compute_v1_args_doc}
class GetDiskComputeV1Args {
  final pulumi.Input<String> disk;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  /// Creates a new [GetDiskComputeV1Args].
  /// [disk] Required.
  /// [project] Optional.
  /// [zone] Required.
  const GetDiskComputeV1Args({
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

  factory GetDiskComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetDiskComputeV1Args(
      disk: pulumi.Input.fromValue(map['disk'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}

