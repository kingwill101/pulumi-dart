// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeHybridReplicationParameters {
  /// Optional. Name of source cluster location associated with the replication. This is a free-form field
  /// for display purposes only.
  final pulumi.Input<String>? clusterLocation;

  /// Optional. Description of the replication.
  final pulumi.Input<String>? description;

  /// Optional. Type of the hybrid replication. Use `MIGRATION` to create a volume migration
  /// and `ONPREM_REPLICATION` to create an external replication.
  /// Other values are read-only. `REVERSE_ONPREM_REPLICATION` is used to represent an external
  /// replication which got reversed. Default is `MIGRATION`.
  /// Possible values are: `MIGRATION`, `CONTINUOUS_REPLICATION`, `ONPREM_REPLICATION`, `REVERSE_ONPREM_REPLICATION`.
  final pulumi.Input<String>? hybridReplicationType;

  /// Optional. Labels to be added to the replication as the key value pairs.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final pulumi.Input<Map<String, String>>? labels;

  /// Optional. If the source is a FlexGroup volume, this field needs to match the number of constituents in the FlexGroup.
  final pulumi.Input<int>? largeVolumeConstituentCount;

  /// Required. Name of the ONTAP source cluster to be peered with NetApp Volumes.
  final pulumi.Input<String>? peerClusterName;

  /// Required. List of all intercluster LIF IP addresses of the ONTAP source cluster.
  final pulumi.Input<List<String>>? peerIpAddresses;

  /// Required. Name of the ONTAP source vserver SVM to be peered with NetApp Volumes.
  final pulumi.Input<String>? peerSvmName;

  /// Required. Name of the ONTAP source volume to be replicated to NetApp Volumes destination volume.
  final pulumi.Input<String>? peerVolumeName;

  /// Required. Desired name for the replication of this volume.
  final pulumi.Input<String>? replication;

  /// Optional. Replication Schedule for the replication created.
  /// Possible values are: `EVERY_10_MINUTES`, `HOURLY`, `DAILY`.
  final pulumi.Input<String>? replicationSchedule;

  /// Creates a new [VolumeHybridReplicationParameters].
  /// [clusterLocation] Optional. Name of source cluster location associated with the replication. This is a free-form field
  /// [description] Optional. Description of the replication.
  /// [hybridReplicationType] Optional. Type of the hybrid replication. Use `MIGRATION` to create a volume migration
  /// [labels] Optional. Labels to be added to the replication as the key value pairs.
  /// [largeVolumeConstituentCount] Optional. If the source is a FlexGroup volume, this field needs to match the number of constituents in the FlexGroup.
  /// [peerClusterName] Required. Name of the ONTAP source cluster to be peered with NetApp Volumes.
  /// [peerIpAddresses] Required. List of all intercluster LIF IP addresses of the ONTAP source cluster.
  /// [peerSvmName] Required. Name of the ONTAP source vserver SVM to be peered with NetApp Volumes.
  /// [peerVolumeName] Required. Name of the ONTAP source volume to be replicated to NetApp Volumes destination volume.
  /// [replication] Required. Desired name for the replication of this volume.
  /// [replicationSchedule] Optional. Replication Schedule for the replication created.
  VolumeHybridReplicationParameters({
    this.clusterLocation,
    this.description,
    this.hybridReplicationType,
    this.labels,
    this.largeVolumeConstituentCount,
    this.peerClusterName,
    this.peerIpAddresses,
    this.peerSvmName,
    this.peerVolumeName,
    this.replication,
    this.replicationSchedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterLocation': ?clusterLocation,
      'description': ?description,
      'hybridReplicationType': ?hybridReplicationType,
      'labels': ?labels,
      'largeVolumeConstituentCount': ?largeVolumeConstituentCount,
      'peerClusterName': ?peerClusterName,
      'peerIpAddresses': ?peerIpAddresses,
      'peerSvmName': ?peerSvmName,
      'peerVolumeName': ?peerVolumeName,
      'replication': ?replication,
      'replicationSchedule': ?replicationSchedule,
    };
  }

  factory VolumeHybridReplicationParameters.fromMap(Map<String, dynamic> map) {
    return VolumeHybridReplicationParameters(
      clusterLocation: (() {
        final guardedValue = map['clusterLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hybridReplicationType: (() {
        final guardedValue = map['hybridReplicationType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      largeVolumeConstituentCount: (() {
        final guardedValue = map['largeVolumeConstituentCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      peerClusterName: (() {
        final guardedValue = map['peerClusterName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      peerIpAddresses: (() {
        final guardedValue = map['peerIpAddresses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      peerSvmName: (() {
        final guardedValue = map['peerSvmName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      peerVolumeName: (() {
        final guardedValue = map['peerVolumeName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      replication: (() {
        final guardedValue = map['replication'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      replicationSchedule: (() {
        final guardedValue = map['replicationSchedule'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
