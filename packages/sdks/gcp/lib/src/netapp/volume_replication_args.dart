// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_replication_destination_volume_parameters.dart';

/// {@template pulumi_netapp_volume_replication_volume_replication_args_doc}
/// The set of arguments for VolumeReplication.
/// {@endtemplate}
/// {@macro pulumi_netapp_volume_replication_volume_replication_args_doc}
class VolumeReplicationArgs {
  final pulumi.Input<bool>? deleteDestinationVolume;

  /// An description of this resource.
  final pulumi.Input<String>? description;

  /// Destination volume parameters.
  /// Structure is documented below.
  final pulumi.Input<VolumeReplicationDestinationVolumeParameters>?
  destinationVolumeParameters;

  /// Only replications with mirror_state=MIRRORED can be stopped. A replication in mirror_state=TRANSFERRING
  /// currently receives an update and stopping the update might be undesirable. Set this parameter to true
  /// to stop anyway. All data transferred to the destination will be discarded and content of destination
  /// volume will remain at the state of the last successful update. Default is false.
  final pulumi.Input<bool>? forceStopping;

  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Name of region for this resource. The resource needs to be created in the region of the destination volume.
  final pulumi.Input<String> location;

  /// The name of the replication. Needs to be unique per location.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Set to false to stop/break the mirror. Stopping the mirror makes the destination volume read-write
  /// and act independently from the source volume.
  /// Set to true to enable/resume the mirror. WARNING: Resuming a mirror overwrites any changes
  /// done to the destination volume with the content of the source volume.
  final pulumi.Input<bool>? replicationEnabled;

  /// Specifies the replication interval.
  /// Possible values are: `EVERY_10_MINUTES`, `HOURLY`, `DAILY`.
  final pulumi.Input<String> replicationSchedule;

  /// The name of the existing source volume.
  final pulumi.Input<String> volumeName;
  final pulumi.Input<bool>? waitForMirror;

  /// Creates a new [VolumeReplicationArgs].
  /// [deleteDestinationVolume] Optional.
  /// [description] An description of this resource.
  /// [destinationVolumeParameters] Destination volume parameters.
  /// [forceStopping] Only replications with mirror_state=MIRRORED can be stopped. A replication in mirror_state=TRANSFERRING
  /// [labels] Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`
  /// [location] Name of region for this resource. The resource needs to be created in the region of the destination volume.
  /// [name] The name of the replication. Needs to be unique per location.
  /// [project] The ID of the project in which the resource belongs.
  /// [replicationEnabled] Set to false to stop/break the mirror. Stopping the mirror makes the destination volume read-write
  /// [replicationSchedule] Specifies the replication interval.
  /// [volumeName] The name of the existing source volume.
  /// [waitForMirror] Optional.
  VolumeReplicationArgs({
    this.deleteDestinationVolume,
    this.description,
    this.destinationVolumeParameters,
    this.forceStopping,
    this.labels,
    required this.location,
    this.name,
    this.project,
    this.replicationEnabled,
    required this.replicationSchedule,
    required this.volumeName,
    this.waitForMirror,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteDestinationVolume': ?deleteDestinationVolume,
      'description': ?description,
      'destinationVolumeParameters':
          ?pulumi.Input.mapOptionalInputValue<
            VolumeReplicationDestinationVolumeParameters,
            Map<String, dynamic>
          >(destinationVolumeParameters, (value) => value.toMap()),
      'forceStopping': ?forceStopping,
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'project': ?project,
      'replicationEnabled': ?replicationEnabled,
      'replicationSchedule': replicationSchedule,
      'volumeName': volumeName,
      'waitForMirror': ?waitForMirror,
    };
  }

  factory VolumeReplicationArgs.fromMap(Map<String, dynamic> map) {
    return VolumeReplicationArgs(
      deleteDestinationVolume: (() {
        final guardedValue = map['deleteDestinationVolume'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinationVolumeParameters: (() {
        final guardedValue = map['destinationVolumeParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VolumeReplicationDestinationVolumeParameters.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      forceStopping: (() {
        final guardedValue = map['forceStopping'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      replicationEnabled: (() {
        final guardedValue = map['replicationEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      replicationSchedule: pulumi.Input.fromValue(
        map['replicationSchedule'] as String,
      ),
      volumeName: pulumi.Input.fromValue(map['volumeName'] as String),
      waitForMirror: (() {
        final guardedValue = map['waitForMirror'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
