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

  factory RestoreWorkloadRegionDiskTargetEnvironment.fromMap(Map<String, dynamic> map) {
    return RestoreWorkloadRegionDiskTargetEnvironment(
      project: (map['project'] as String).input(),
      region: (map['region'] as String).input(),
      replicaZones: ((map['replicaZones'] as List).cast<String>()).input(),
    );
  }
}

