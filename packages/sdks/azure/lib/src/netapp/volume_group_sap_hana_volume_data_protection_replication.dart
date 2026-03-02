// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeGroupSapHanaVolumeDataProtectionReplication {
  /// The endpoint type. Possible values are `dst` and `src`. Defaults to `dst`. Changing this forces a new Application Volume Group to be created and data will be lost.
  final pulumi.Input<String>? endpointType;
  /// Location of the primary volume.
  final pulumi.Input<String> remoteVolumeLocation;
  /// Resource ID of the primary volume. Changing this forces a new Application Volume Group to be created and data will be lost.
  final pulumi.Input<String> remoteVolumeResourceId;
  /// eplication frequency. Possible values are `10minutes`, `daily` and `hourly`. Changing this forces a new Application Volume Group to be created and data will be lost.
  final pulumi.Input<String> replicationFrequency;

  /// Creates a new [VolumeGroupSapHanaVolumeDataProtectionReplication].
  /// [endpointType] The endpoint type. Possible values are `dst` and `src`. Defaults to `dst`. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [remoteVolumeLocation] Location of the primary volume.
  /// [remoteVolumeResourceId] Resource ID of the primary volume. Changing this forces a new Application Volume Group to be created and data will be lost.
  /// [replicationFrequency] eplication frequency. Possible values are `10minutes`, `daily` and `hourly`. Changing this forces a new Application Volume Group to be created and data will be lost.
  VolumeGroupSapHanaVolumeDataProtectionReplication({
    this.endpointType,
    required this.remoteVolumeLocation,
    required this.remoteVolumeResourceId,
    required this.replicationFrequency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointType': ?endpointType,
      'remoteVolumeLocation': remoteVolumeLocation,
      'remoteVolumeResourceId': remoteVolumeResourceId,
      'replicationFrequency': replicationFrequency,
    };
  }

  factory VolumeGroupSapHanaVolumeDataProtectionReplication.fromMap(Map<String, dynamic> map) {
    return VolumeGroupSapHanaVolumeDataProtectionReplication(
      endpointType: map['endpointType'] == null ? null : (map['endpointType'] as String).input(),
      remoteVolumeLocation: (map['remoteVolumeLocation'] as String).input(),
      remoteVolumeResourceId: (map['remoteVolumeResourceId'] as String).input(),
      replicationFrequency: (map['replicationFrequency'] as String).input(),
    );
  }
}

