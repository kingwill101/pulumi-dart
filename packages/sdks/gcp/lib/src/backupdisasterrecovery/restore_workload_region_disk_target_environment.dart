// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RestoreWorkloadRegionDiskTargetEnvironment {
  /// Required. Target project for the disk.
  final pulumi.Input<String> project;

  /// Required. Target region for the disk.
  final pulumi.Input<String> region;

  /// Required. Target URLs of the replica zones for the disk.
  final pulumi.Input<List<String>> replicaZones;

  /// Creates a new [RestoreWorkloadRegionDiskTargetEnvironment].
  /// [project] Required. Target project for the disk.
  /// [region] Required. Target region for the disk.
  /// [replicaZones] Required. Target URLs of the replica zones for the disk.
  RestoreWorkloadRegionDiskTargetEnvironment({
    required this.project,
    required this.region,
    required this.replicaZones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': project,
      'region': region,
      'replicaZones': replicaZones,
    };
  }

  factory RestoreWorkloadRegionDiskTargetEnvironment.fromMap(
    Map<String, dynamic> map,
  ) {
    return RestoreWorkloadRegionDiskTargetEnvironment(
      project: pulumi.Input.fromValue(map['project'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
      replicaZones: pulumi.Input.fromValue(
        (map['replicaZones'] as List).cast<String>(),
      ),
    );
  }
}
