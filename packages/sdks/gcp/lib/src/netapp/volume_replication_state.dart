// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_replication_destination_volume_parameters.dart';
import 'volume_replication_hybrid_peering_detail.dart';
import 'volume_replication_hybrid_replication_user_command.dart';
import 'volume_replication_transfer_stat.dart';

/// Input properties used for looking up and filtering VolumeReplication resources.
class VolumeReplicationState {
  /// Create time of the active directory. A timestamp in RFC3339 UTC "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
  final pulumi.Input<String>? createTime;
  final pulumi.Input<bool>? deleteDestinationVolume;
  /// An description of this resource.
  final pulumi.Input<String>? description;
  /// Full resource name of destination volume with format: `projects/{{project}}/locations/{{location}}/volumes/{{volumeId}}`
  final pulumi.Input<String>? destinationVolume;
  /// Destination volume parameters.
  /// Structure is documented below.
  final pulumi.Input<VolumeReplicationDestinationVolumeParameters>? destinationVolumeParameters;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Only replications with mirror_state=MIRRORED can be stopped. A replication in mirror_state=TRANSFERRING
  /// currently receives an update and stopping the update might be undesirable. Set this parameter to true
  /// to stop anyway. All data transferred to the destination will be discarded and content of destination
  /// volume will remain at the state of the last successful update. Default is false.
  final pulumi.Input<bool>? forceStopping;
  /// Condition of the relationship. Can be one of the following:
  /// - true: The replication relationship is healthy. It has not missed the most recent scheduled transfer.
  /// - false: The replication relationship is not healthy. It has missed the most recent scheduled transfer.
  final pulumi.Input<bool>? healthy;
  /// HybridPeeringDetails contains details about the hybrid peering.
  /// Structure is documented below.
  final pulumi.Input<List<VolumeReplicationHybridPeeringDetail>>? hybridPeeringDetails;
  /// Hybrid replication type.
  final pulumi.Input<String>? hybridReplicationType;
  /// Copy pastable snapmirror commands to be executed on onprem cluster by the customer.
  /// Structure is documented below.
  final pulumi.Input<List<VolumeReplicationHybridReplicationUserCommand>>? hybridReplicationUserCommands;
  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of region for this resource. The resource needs to be created in the region of the destination volume.
  final pulumi.Input<String>? location;
  /// Indicates the state of the mirror between source and destination volumes. Depending on the amount of data
  /// in your source volume, PREPARING phase can take hours or days. mirrorState = MIRRORED indicates your baseline
  /// transfer ended and destination volume became accessible read-only. TRANSFERRING means a MIRRORED volume
  /// currently receives an update. Updated every 5 minutes.
  final pulumi.Input<String>? mirrorState;
  /// The name of the replication. Needs to be unique per location.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Set to false to stop/break the mirror. Stopping the mirror makes the destination volume read-write
  /// and act independently from the source volume.
  /// Set to true to enable/resume the mirror. WARNING: Resuming a mirror overwrites any changes
  /// done to the destination volume with the content of the source volume.
  final pulumi.Input<bool>? replicationEnabled;
  /// Specifies the replication interval.
  /// Possible values are: `EVERY_10_MINUTES`, `HOURLY`, `DAILY`.
  final pulumi.Input<String>? replicationSchedule;
  /// Reverting a replication can swap source and destination volume roles. This field indicates if the `location` hosts
  /// the source or destination volume. For resume and revert and resume operations it is critical to understand
  /// which volume is the source volume, since it will overwrite changes done to the destination volume.
  final pulumi.Input<String>? role;
  /// Full resource name of source volume with format: `projects/{{project}}/locations/{{location}}/volumes/{{volumeId}}`
  final pulumi.Input<String>? sourceVolume;
  /// Indicates the state of replication resource. State of the mirror itself is indicated in mirrorState.
  final pulumi.Input<String>? state;
  /// State details of the replication resource.
  final pulumi.Input<String>? stateDetails;
  /// Replication transfer statistics. All statistics are updated every 5 minutes.
  /// Structure is documented below.
  final pulumi.Input<List<VolumeReplicationTransferStat>>? transferStats;
  /// The name of the existing source volume.
  final pulumi.Input<String>? volumeName;
  final pulumi.Input<bool>? waitForMirror;

  /// Creates a new [VolumeReplicationState].
  /// [createTime] Create time of the active directory. A timestamp in RFC3339 UTC "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
  /// [deleteDestinationVolume] Optional.
  /// [description] An description of this resource.
  /// [destinationVolume] Full resource name of destination volume with format: `projects/{{project}}/locations/{{location}}/volumes/{{volumeId}}`
  /// [destinationVolumeParameters] Destination volume parameters.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [forceStopping] Only replications with mirror_state=MIRRORED can be stopped. A replication in mirror_state=TRANSFERRING
  /// [healthy] Condition of the relationship. Can be one of the following:
  /// [hybridPeeringDetails] HybridPeeringDetails contains details about the hybrid peering.
  /// [hybridReplicationType] Hybrid replication type.
  /// [hybridReplicationUserCommands] Copy pastable snapmirror commands to be executed on onprem cluster by the customer.
  /// [labels] Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`
  /// [location] Name of region for this resource. The resource needs to be created in the region of the destination volume.
  /// [mirrorState] Indicates the state of the mirror between source and destination volumes. Depending on the amount of data
  /// [name] The name of the replication. Needs to be unique per location.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [replicationEnabled] Set to false to stop/break the mirror. Stopping the mirror makes the destination volume read-write
  /// [replicationSchedule] Specifies the replication interval.
  /// [role] Reverting a replication can swap source and destination volume roles. This field indicates if the `location` hosts
  /// [sourceVolume] Full resource name of source volume with format: `projects/{{project}}/locations/{{location}}/volumes/{{volumeId}}`
  /// [state] Indicates the state of replication resource. State of the mirror itself is indicated in mirrorState.
  /// [stateDetails] State details of the replication resource.
  /// [transferStats] Replication transfer statistics. All statistics are updated every 5 minutes.
  /// [volumeName] The name of the existing source volume.
  /// [waitForMirror] Optional.
  VolumeReplicationState({
    this.createTime,
    this.deleteDestinationVolume,
    this.description,
    this.destinationVolume,
    this.destinationVolumeParameters,
    this.effectiveLabels,
    this.forceStopping,
    this.healthy,
    this.hybridPeeringDetails,
    this.hybridReplicationType,
    this.hybridReplicationUserCommands,
    this.labels,
    this.location,
    this.mirrorState,
    this.name,
    this.project,
    this.pulumiLabels,
    this.replicationEnabled,
    this.replicationSchedule,
    this.role,
    this.sourceVolume,
    this.state,
    this.stateDetails,
    this.transferStats,
    this.volumeName,
    this.waitForMirror,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deleteDestinationVolume': ?deleteDestinationVolume,
      'description': ?description,
      'destinationVolume': ?destinationVolume,
      'destinationVolumeParameters': ?pulumi.Input.mapOptionalInputValue<VolumeReplicationDestinationVolumeParameters, Map<String, dynamic>>(destinationVolumeParameters, (value) => value.toMap()),
      'effectiveLabels': ?effectiveLabels,
      'forceStopping': ?forceStopping,
      'healthy': ?healthy,
      'hybridPeeringDetails': ?pulumi.Input.mapOptionalInputValue<List<VolumeReplicationHybridPeeringDetail>, List<Map<String, dynamic>>>(hybridPeeringDetails, (value) => pulumi.Input.encodeList<VolumeReplicationHybridPeeringDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hybridReplicationType': ?hybridReplicationType,
      'hybridReplicationUserCommands': ?pulumi.Input.mapOptionalInputValue<List<VolumeReplicationHybridReplicationUserCommand>, List<Map<String, dynamic>>>(hybridReplicationUserCommands, (value) => pulumi.Input.encodeList<VolumeReplicationHybridReplicationUserCommand, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': ?labels,
      'location': ?location,
      'mirrorState': ?mirrorState,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'replicationEnabled': ?replicationEnabled,
      'replicationSchedule': ?replicationSchedule,
      'role': ?role,
      'sourceVolume': ?sourceVolume,
      'state': ?state,
      'stateDetails': ?stateDetails,
      'transferStats': ?pulumi.Input.mapOptionalInputValue<List<VolumeReplicationTransferStat>, List<Map<String, dynamic>>>(transferStats, (value) => pulumi.Input.encodeList<VolumeReplicationTransferStat, Map<String, dynamic>>(value, (value) => value.toMap())),
      'volumeName': ?volumeName,
      'waitForMirror': ?waitForMirror,
    };
  }

  factory VolumeReplicationState.fromMap(Map<String, dynamic> map) {
    return VolumeReplicationState(
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      deleteDestinationVolume: map['deleteDestinationVolume'] == null ? null : (map['deleteDestinationVolume'] as bool).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      destinationVolume: map['destinationVolume'] == null ? null : (map['destinationVolume'] as String).input(),
      destinationVolumeParameters: map['destinationVolumeParameters'] == null ? null : (VolumeReplicationDestinationVolumeParameters.fromMap((map['destinationVolumeParameters'] as Map).cast<String, dynamic>())).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      forceStopping: map['forceStopping'] == null ? null : (map['forceStopping'] as bool).input(),
      healthy: map['healthy'] == null ? null : (map['healthy'] as bool).input(),
      hybridPeeringDetails: map['hybridPeeringDetails'] == null ? null : (pulumi.Input.decodeList<VolumeReplicationHybridPeeringDetail>(map['hybridPeeringDetails'], (value) => VolumeReplicationHybridPeeringDetail.fromMap((value as Map).cast<String, dynamic>()))).input(),
      hybridReplicationType: map['hybridReplicationType'] == null ? null : (map['hybridReplicationType'] as String).input(),
      hybridReplicationUserCommands: map['hybridReplicationUserCommands'] == null ? null : (pulumi.Input.decodeList<VolumeReplicationHybridReplicationUserCommand>(map['hybridReplicationUserCommands'], (value) => VolumeReplicationHybridReplicationUserCommand.fromMap((value as Map).cast<String, dynamic>()))).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      mirrorState: map['mirrorState'] == null ? null : (map['mirrorState'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      replicationEnabled: map['replicationEnabled'] == null ? null : (map['replicationEnabled'] as bool).input(),
      replicationSchedule: map['replicationSchedule'] == null ? null : (map['replicationSchedule'] as String).input(),
      role: map['role'] == null ? null : (map['role'] as String).input(),
      sourceVolume: map['sourceVolume'] == null ? null : (map['sourceVolume'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      stateDetails: map['stateDetails'] == null ? null : (map['stateDetails'] as String).input(),
      transferStats: map['transferStats'] == null ? null : (pulumi.Input.decodeList<VolumeReplicationTransferStat>(map['transferStats'], (value) => VolumeReplicationTransferStat.fromMap((value as Map).cast<String, dynamic>()))).input(),
      volumeName: map['volumeName'] == null ? null : (map['volumeName'] as String).input(),
      waitForMirror: map['waitForMirror'] == null ? null : (map['waitForMirror'] as bool).input(),
    );
  }
}

