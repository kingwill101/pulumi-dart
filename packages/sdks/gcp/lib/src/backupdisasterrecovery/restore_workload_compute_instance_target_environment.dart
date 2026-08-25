// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RestoreWorkloadComputeInstanceTargetEnvironment {
  /// Required. Target project for the Compute Engine instance.
  final pulumi.Input<String> project;
  /// If true, use the BackupDR P4SA credentials for same-project restores. Default is false.
  final pulumi.Input<bool?>? useProjectServiceAccount;
  /// Required. The zone of the Compute Engine instance.
  final pulumi.Input<String> zone;

  /// Creates a new [RestoreWorkloadComputeInstanceTargetEnvironment].
  /// [project] Required. Target project for the Compute Engine instance.
  /// [useProjectServiceAccount] If true, use the BackupDR P4SA credentials for same-project restores. Default is false.
  /// [zone] Required. The zone of the Compute Engine instance.
  const RestoreWorkloadComputeInstanceTargetEnvironment({
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

  factory RestoreWorkloadComputeInstanceTargetEnvironment.fromMap(Map<String, dynamic> map) {
    return RestoreWorkloadComputeInstanceTargetEnvironment(
      project: pulumi.Input.fromValue(map['project'] as String),
      useProjectServiceAccount: (() { final guardedValue = map['useProjectServiceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
