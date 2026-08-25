// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RestoreWorkloadRegionDiskTargetEnvironment {
  /// Required. Target project for the disk.
  final pulumi.Input<String> project;
  /// Required. Target region for the disk.
  final pulumi.Input<String> region;
  /// Required. Target URLs of the replica zones for the disk.
  final pulumi.Input<List<String>> replicaZones;
  /// If true, use the BackupDR P4SA credentials for same-project restores. Default is false.
  final pulumi.Input<bool?>? useProjectServiceAccount;

  /// Creates a new [RestoreWorkloadRegionDiskTargetEnvironment].
  /// [project] Required. Target project for the disk.
  /// [region] Required. Target region for the disk.
  /// [replicaZones] Required. Target URLs of the replica zones for the disk.
  /// [useProjectServiceAccount] If true, use the BackupDR P4SA credentials for same-project restores. Default is false.
  const RestoreWorkloadRegionDiskTargetEnvironment({
    required this.project,
    required this.region,
    required this.replicaZones,
    this.useProjectServiceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': project,
      'region': region,
      'replicaZones': replicaZones,
      'useProjectServiceAccount': ?useProjectServiceAccount,
    };
  }

  factory RestoreWorkloadRegionDiskTargetEnvironment.fromMap(Map<String, dynamic> map) {
    return RestoreWorkloadRegionDiskTargetEnvironment(
      project: pulumi.Input.fromValue(map['project'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
      replicaZones: pulumi.Input.fromValue((map['replicaZones'] as List).cast<String>()),
      useProjectServiceAccount: (() { final guardedValue = map['useProjectServiceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
