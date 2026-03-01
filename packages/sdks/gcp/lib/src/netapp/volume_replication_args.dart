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
  final pulumi.Input<VolumeReplicationDestinationVolumeParameters>? destinationVolumeParameters;
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
    pulumi.Output<bool>? deleteDestinationVolume,
    pulumi.Output<String>? description,
    pulumi.Output<VolumeReplicationDestinationVolumeParameters>? destinationVolumeParameters,
    pulumi.Output<bool>? forceStopping,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<bool>? replicationEnabled,
    required pulumi.Output<String> replicationSchedule,
    required pulumi.Output<String> volumeName,
    pulumi.Output<bool>? waitForMirror,
  }) :
      deleteDestinationVolume = pulumi.Input.asOptionalInput<bool>(deleteDestinationVolume),
      description = pulumi.Input.asOptionalInput<String>(description),
      destinationVolumeParameters = pulumi.Input.asOptionalInput<VolumeReplicationDestinationVolumeParameters>(destinationVolumeParameters),
      forceStopping = pulumi.Input.asOptionalInput<bool>(forceStopping),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      replicationEnabled = pulumi.Input.asOptionalInput<bool>(replicationEnabled),
      replicationSchedule = pulumi.Input.asInput<String>(replicationSchedule),
      volumeName = pulumi.Input.asInput<String>(volumeName),
      waitForMirror = pulumi.Input.asOptionalInput<bool>(waitForMirror);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteDestinationVolume': ?deleteDestinationVolume,
      'description': ?description,
      'destinationVolumeParameters': ?pulumi.Input.mapOptionalInputValue<VolumeReplicationDestinationVolumeParameters, Map<String, dynamic>>(destinationVolumeParameters, (value) => value.toMap()),
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
      deleteDestinationVolume: map['deleteDestinationVolume'] == null ? null : pulumi.Output.create<bool>(map['deleteDestinationVolume'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      destinationVolumeParameters: map['destinationVolumeParameters'] == null ? null : pulumi.Output.create<VolumeReplicationDestinationVolumeParameters>(VolumeReplicationDestinationVolumeParameters.fromMap((map['destinationVolumeParameters'] as Map).cast<String, dynamic>())),
      forceStopping: map['forceStopping'] == null ? null : pulumi.Output.create<bool>(map['forceStopping'] as bool),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      replicationEnabled: map['replicationEnabled'] == null ? null : pulumi.Output.create<bool>(map['replicationEnabled'] as bool),
      replicationSchedule: pulumi.Output.create<String>(map['replicationSchedule'] as String),
      volumeName: pulumi.Output.create<String>(map['volumeName'] as String),
      waitForMirror: map['waitForMirror'] == null ? null : pulumi.Output.create<bool>(map['waitForMirror'] as bool),
    );
  }
}

