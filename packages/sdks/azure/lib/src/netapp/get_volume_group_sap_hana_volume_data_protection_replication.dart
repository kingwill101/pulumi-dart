// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVolumeGroupSapHanaVolumeDataProtectionReplication {
  /// The endpoint type.
  final pulumi.Input<String> endpointType;
  /// Location of the primary volume.
  final pulumi.Input<String> remoteVolumeLocation;
  /// Resource ID of the primary volume.
  final pulumi.Input<String> remoteVolumeResourceId;
  /// Replication frequency.
  final pulumi.Input<String> replicationFrequency;

  /// Creates a new [GetVolumeGroupSapHanaVolumeDataProtectionReplication].
  /// [endpointType] The endpoint type.
  /// [remoteVolumeLocation] Location of the primary volume.
  /// [remoteVolumeResourceId] Resource ID of the primary volume.
  /// [replicationFrequency] Replication frequency.
  GetVolumeGroupSapHanaVolumeDataProtectionReplication({
    required this.endpointType,
    required this.remoteVolumeLocation,
    required this.remoteVolumeResourceId,
    required this.replicationFrequency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointType': endpointType,
      'remoteVolumeLocation': remoteVolumeLocation,
      'remoteVolumeResourceId': remoteVolumeResourceId,
      'replicationFrequency': replicationFrequency,
    };
  }

  factory GetVolumeGroupSapHanaVolumeDataProtectionReplication.fromMap(Map<String, dynamic> map) {
    return GetVolumeGroupSapHanaVolumeDataProtectionReplication(
      endpointType: (map['endpointType'] as String).input(),
      remoteVolumeLocation: (map['remoteVolumeLocation'] as String).input(),
      remoteVolumeResourceId: (map['remoteVolumeResourceId'] as String).input(),
      replicationFrequency: (map['replicationFrequency'] as String).input(),
    );
  }
}

