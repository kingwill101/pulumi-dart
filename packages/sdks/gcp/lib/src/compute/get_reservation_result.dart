// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_reservation_delete_after_duration.dart';
import 'get_reservation_reservation_sharing_policy.dart';
import 'get_reservation_resource_status.dart';
import 'get_reservation_share_setting.dart';
import 'get_reservation_specific_reservation.dart';

/// Result data returned by getReservation.
class GetReservationResult {
  final List<String> blockNames;
  final String commitment;
  final String creationTimestamp;
  final List<GetReservationDeleteAfterDuration> deleteAfterDurations;
  final String deleteAtTime;
  final String description;
  final bool enableEmergentMaintenance;
  final String id;
  final String kind;
  final List<String> linkedCommitments;
  final String name;
  final String? project;
  final int reservationBlockCount;
  final List<GetReservationReservationSharingPolicy> reservationSharingPolicies;
  final List<GetReservationResourceStatus> resourceStatuses;
  final bool satisfiesPzs;
  final String selfLink;
  final List<GetReservationShareSetting> shareSettings;
  final bool specificReservationRequired;
  final List<GetReservationSpecificReservation> specificReservations;
  final String status;
  final String zone;

  /// Creates a new [GetReservationResult].
  /// [blockNames] Required.
  /// [commitment] Required.
  /// [creationTimestamp] Required.
  /// [deleteAfterDurations] Required.
  /// [deleteAtTime] Required.
  /// [description] Required.
  /// [enableEmergentMaintenance] Required.
  /// [id] Required.
  /// [kind] Required.
  /// [linkedCommitments] Required.
  /// [name] Required.
  /// [project] Optional.
  /// [reservationBlockCount] Required.
  /// [reservationSharingPolicies] Required.
  /// [resourceStatuses] Required.
  /// [satisfiesPzs] Required.
  /// [selfLink] Required.
  /// [shareSettings] Required.
  /// [specificReservationRequired] Required.
  /// [specificReservations] Required.
  /// [status] Required.
  /// [zone] Required.
  GetReservationResult({
    required this.blockNames,
    required this.commitment,
    required this.creationTimestamp,
    required this.deleteAfterDurations,
    required this.deleteAtTime,
    required this.description,
    required this.enableEmergentMaintenance,
    required this.id,
    required this.kind,
    required this.linkedCommitments,
    required this.name,
    this.project,
    required this.reservationBlockCount,
    required this.reservationSharingPolicies,
    required this.resourceStatuses,
    required this.satisfiesPzs,
    required this.selfLink,
    required this.shareSettings,
    required this.specificReservationRequired,
    required this.specificReservations,
    required this.status,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockNames': blockNames,
      'commitment': commitment,
      'creationTimestamp': creationTimestamp,
      'deleteAfterDurations': pulumi.Input.encodeList<GetReservationDeleteAfterDuration, Map<String, dynamic>>(deleteAfterDurations, (value) => value.toMap()),
      'deleteAtTime': deleteAtTime,
      'description': description,
      'enableEmergentMaintenance': enableEmergentMaintenance,
      'id': id,
      'kind': kind,
      'linkedCommitments': linkedCommitments,
      'name': name,
      'project': ?project,
      'reservationBlockCount': reservationBlockCount,
      'reservationSharingPolicies': pulumi.Input.encodeList<GetReservationReservationSharingPolicy, Map<String, dynamic>>(reservationSharingPolicies, (value) => value.toMap()),
      'resourceStatuses': pulumi.Input.encodeList<GetReservationResourceStatus, Map<String, dynamic>>(resourceStatuses, (value) => value.toMap()),
      'satisfiesPzs': satisfiesPzs,
      'selfLink': selfLink,
      'shareSettings': pulumi.Input.encodeList<GetReservationShareSetting, Map<String, dynamic>>(shareSettings, (value) => value.toMap()),
      'specificReservationRequired': specificReservationRequired,
      'specificReservations': pulumi.Input.encodeList<GetReservationSpecificReservation, Map<String, dynamic>>(specificReservations, (value) => value.toMap()),
      'status': status,
      'zone': zone,
    };
  }

  factory GetReservationResult.fromMap(Map<String, dynamic> map) {
    return GetReservationResult(
      blockNames: (map['blockNames'] as List).cast<String>(),
      commitment: map['commitment'] as String,
      creationTimestamp: map['creationTimestamp'] as String,
      deleteAfterDurations: pulumi.Input.decodeList<GetReservationDeleteAfterDuration>(map['deleteAfterDurations']!, (value) => GetReservationDeleteAfterDuration.fromMap((value as Map).cast<String, dynamic>())),
      deleteAtTime: map['deleteAtTime'] as String,
      description: map['description'] as String,
      enableEmergentMaintenance: map['enableEmergentMaintenance'] as bool,
      id: map['id'] as String,
      kind: map['kind'] as String,
      linkedCommitments: (map['linkedCommitments'] as List).cast<String>(),
      name: map['name'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      reservationBlockCount: map['reservationBlockCount'] as int,
      reservationSharingPolicies: pulumi.Input.decodeList<GetReservationReservationSharingPolicy>(map['reservationSharingPolicies']!, (value) => GetReservationReservationSharingPolicy.fromMap((value as Map).cast<String, dynamic>())),
      resourceStatuses: pulumi.Input.decodeList<GetReservationResourceStatus>(map['resourceStatuses']!, (value) => GetReservationResourceStatus.fromMap((value as Map).cast<String, dynamic>())),
      satisfiesPzs: map['satisfiesPzs'] as bool,
      selfLink: map['selfLink'] as String,
      shareSettings: pulumi.Input.decodeList<GetReservationShareSetting>(map['shareSettings']!, (value) => GetReservationShareSetting.fromMap((value as Map).cast<String, dynamic>())),
      specificReservationRequired: map['specificReservationRequired'] as bool,
      specificReservations: pulumi.Input.decodeList<GetReservationSpecificReservation>(map['specificReservations']!, (value) => GetReservationSpecificReservation.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] as String,
      zone: map['zone'] as String,
    );
  }
}

