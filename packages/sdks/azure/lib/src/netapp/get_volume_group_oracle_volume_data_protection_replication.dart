// ignore_for_file: unused_element, unnecessary_cast


class GetVolumeGroupOracleVolumeDataProtectionReplication {
  /// The endpoint type.
  final String endpointType;
  /// Location of the primary volume.
  final String remoteVolumeLocation;
  /// Resource ID of the primary volume.
  final String remoteVolumeResourceId;
  /// Replication frequency.
  final String replicationFrequency;

  /// Creates a new [GetVolumeGroupOracleVolumeDataProtectionReplication].
  /// [endpointType] The endpoint type.
  /// [remoteVolumeLocation] Location of the primary volume.
  /// [remoteVolumeResourceId] Resource ID of the primary volume.
  /// [replicationFrequency] Replication frequency.
  GetVolumeGroupOracleVolumeDataProtectionReplication({
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

  factory GetVolumeGroupOracleVolumeDataProtectionReplication.fromMap(Map<String, dynamic> map) {
    return GetVolumeGroupOracleVolumeDataProtectionReplication(
      endpointType: map['endpointType'] as String,
      remoteVolumeLocation: map['remoteVolumeLocation'] as String,
      remoteVolumeResourceId: map['remoteVolumeResourceId'] as String,
      replicationFrequency: map['replicationFrequency'] as String,
    );
  }
}

