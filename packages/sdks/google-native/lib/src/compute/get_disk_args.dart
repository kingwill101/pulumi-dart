// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_disk_args_doc}
/// Arguments for getDisk.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_disk_args_doc}
class GetDiskArgs {
  final pulumi.Input<String> disk;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  /// Creates a new [GetDiskArgs].
  /// [disk] Required.
  /// [project] Optional.
  /// [zone] Required.
  GetDiskArgs({required this.disk, this.project, required this.zone});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'disk': disk, 'project': ?project, 'zone': zone};
  }

  factory GetDiskArgs.fromMap(Map<String, dynamic> map) {
    return GetDiskArgs(
      disk: pulumi.Input.fromValue(map['disk'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
