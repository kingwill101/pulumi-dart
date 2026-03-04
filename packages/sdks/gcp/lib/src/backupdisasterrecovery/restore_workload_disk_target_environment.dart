// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RestoreWorkloadDiskTargetEnvironment {
  /// Required. Target project for the disk.
  final pulumi.Input<String> project;

  /// Required. Target zone for the disk.
  final pulumi.Input<String> zone;

  /// Creates a new [RestoreWorkloadDiskTargetEnvironment].
  /// [project] Required. Target project for the disk.
  /// [zone] Required. Target zone for the disk.
  RestoreWorkloadDiskTargetEnvironment({
    required this.project,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'project': project, 'zone': zone};
  }

  factory RestoreWorkloadDiskTargetEnvironment.fromMap(
    Map<String, dynamic> map,
  ) {
    return RestoreWorkloadDiskTargetEnvironment(
      project: pulumi.Input.fromValue(map['project'] as String),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
