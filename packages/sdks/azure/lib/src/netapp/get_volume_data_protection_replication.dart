// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVolumeDataProtectionReplication {
  /// The endpoint type.
  final pulumi.Input<String> endpointType;
  /// Location of the primary volume.
  final pulumi.Input<String> remoteVolumeLocation;
  /// Resource ID of the primary volume.
  final pulumi.Input<String> remoteVolumeResourceId;
  /// Frequency of replication.
  final pulumi.Input<String> replicationFrequency;

  /// Creates a new [GetVolumeDataProtectionReplication].
  /// [endpointType] The endpoint type.
  /// [remoteVolumeLocation] Location of the primary volume.
  /// [remoteVolumeResourceId] Resource ID of the primary volume.
  /// [replicationFrequency] Frequency of replication.
  const GetVolumeDataProtectionReplication({
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

  factory GetVolumeDataProtectionReplication.fromMap(Map<String, dynamic> map) {
    return GetVolumeDataProtectionReplication(
      endpointType: pulumi.Input.fromValue(map['endpointType'] as String),
      remoteVolumeLocation: pulumi.Input.fromValue(map['remoteVolumeLocation'] as String),
      remoteVolumeResourceId: pulumi.Input.fromValue(map['remoteVolumeResourceId'] as String),
      replicationFrequency: pulumi.Input.fromValue(map['replicationFrequency'] as String),
    );
  }
}
