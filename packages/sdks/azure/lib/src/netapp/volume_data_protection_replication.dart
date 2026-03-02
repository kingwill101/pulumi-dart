// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeDataProtectionReplication {
  /// The endpoint type, default value is `dst` for destination.
  final pulumi.Input<String>? endpointType;
  /// Location of the primary volume. Changing this forces a new resource to be created.
  final pulumi.Input<String> remoteVolumeLocation;
  /// Resource ID of the primary volume.
  final pulumi.Input<String> remoteVolumeResourceId;
  /// Replication frequency, supported values are '10minutes', 'hourly', 'daily', values are case sensitive.
  ///
  /// A full example of the `data_protection_replication` attribute can be found in the `./examples/netapp/volume_crr` directory within the GitHub Repository
  ///
  /// > **Note:** Each destination volume can have only one `data_protection_replication` block configured. However, a source volume can have up to 2 destination volumes replicating from it (fan-out deployment). For more information on fan-out replication topologies, see [Understand data protection in Azure NetApp Files](https://learn.microsoft.com/azure/azure-netapp-files/data-protection-disaster-recovery-options#supported-replication-topologies).
  ///
  /// > **Note:** For cross-zone replication (when `remote_volume_location` is the same as the volume's `location`), both the source and destination volumes must have a `zone` assigned. For a complete example of cross-zone-region replication with fan-out deployment, see the `./examples/netapp/cross_zone_region_replication` directory within the GitHub Repository. For more information, see [Manage cross-zone-region replication for Azure NetApp Files](https://learn.microsoft.com/azure/azure-netapp-files/cross-zone-region-replication-configure).
  final pulumi.Input<String> replicationFrequency;

  /// Creates a new [VolumeDataProtectionReplication].
  /// [endpointType] The endpoint type, default value is `dst` for destination.
  /// [remoteVolumeLocation] Location of the primary volume. Changing this forces a new resource to be created.
  /// [remoteVolumeResourceId] Resource ID of the primary volume.
  /// [replicationFrequency] Replication frequency, supported values are '10minutes', 'hourly', 'daily', values are case sensitive.
  VolumeDataProtectionReplication({
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

  factory VolumeDataProtectionReplication.fromMap(Map<String, dynamic> map) {
    return VolumeDataProtectionReplication(
      endpointType: map['endpointType'] == null ? null : (map['endpointType']! as String).input(),
      remoteVolumeLocation: (map['remoteVolumeLocation'] as String).input(),
      remoteVolumeResourceId: (map['remoteVolumeResourceId'] as String).input(),
      replicationFrequency: (map['replicationFrequency'] as String).input(),
    );
  }
}

