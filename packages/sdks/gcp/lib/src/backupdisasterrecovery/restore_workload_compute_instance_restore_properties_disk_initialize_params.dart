// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RestoreWorkloadComputeInstanceRestorePropertiesDiskInitializeParams {
  /// Optional. Specifies the disk name.
  final pulumi.Input<String>? diskName;

  /// Optional. URL of the zone where the disk should be created.
  final pulumi.Input<List<String>>? replicaZones;

  /// Creates a new [RestoreWorkloadComputeInstanceRestorePropertiesDiskInitializeParams].
  /// [diskName] Optional. Specifies the disk name.
  /// [replicaZones] Optional. URL of the zone where the disk should be created.
  RestoreWorkloadComputeInstanceRestorePropertiesDiskInitializeParams({
    this.diskName,
    this.replicaZones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskName': ?diskName,
      'replicaZones': ?replicaZones,
    };
  }

  factory RestoreWorkloadComputeInstanceRestorePropertiesDiskInitializeParams.fromMap(
    Map<String, dynamic> map,
  ) {
    return RestoreWorkloadComputeInstanceRestorePropertiesDiskInitializeParams(
      diskName: (() {
        final guardedValue = map['diskName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      replicaZones: (() {
        final guardedValue = map['replicaZones'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
