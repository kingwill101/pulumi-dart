// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RestoreWorkloadDiskTargetEnvironment {
  /// Required. Target project for the disk.
  final pulumi.Input<String> project;
  /// If true, use the BackupDR P4SA credentials for same-project restores. Default is false.
  final pulumi.Input<bool>? useProjectServiceAccount;
  /// Required. Target zone for the disk.
  final pulumi.Input<String> zone;

  /// Creates a new [RestoreWorkloadDiskTargetEnvironment].
  /// [project] Required. Target project for the disk.
  /// [useProjectServiceAccount] If true, use the BackupDR P4SA credentials for same-project restores. Default is false.
  /// [zone] Required. Target zone for the disk.
  const RestoreWorkloadDiskTargetEnvironment({
    required this.project,
    this.useProjectServiceAccount,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': project,
      'useProjectServiceAccount': ?useProjectServiceAccount,
      'zone': zone,
    };
  }

  factory RestoreWorkloadDiskTargetEnvironment.fromMap(Map<String, dynamic> map) {
    return RestoreWorkloadDiskTargetEnvironment(
      project: pulumi.Input.fromValue(map['project'] as String),
      useProjectServiceAccount: (() { final guardedValue = map['useProjectServiceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
