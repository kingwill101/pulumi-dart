// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_reservation_delete_after_duration.dart';
import 'get_reservation_param.dart';
import 'get_reservation_reservation_sharing_policy.dart';
import 'get_reservation_resource_status.dart';
import 'get_reservation_share_setting.dart';
import 'get_reservation_specific_reservation.dart';

/// Result data returned by getReservation.
class GetReservationResult {
  final List<String>? blockNames;
  final String? commitment;
  final String? creationTimestamp;
  final List<GetReservationDeleteAfterDuration>? deleteAfterDurations;
  final String? deleteAtTime;
  final String? deletionPolicy;
  final String? description;
  final bool? enableEmergentMaintenance;
  final String? id;
  final String? kind;
  final List<String>? linkedCommitments;
  final String? name;
  final List<GetReservationParam>? params;
  final String? project;
  final int? reservationBlockCount;
  final List<GetReservationReservationSharingPolicy>? reservationSharingPolicies;
  final List<GetReservationResourceStatus>? resourceStatuses;
  final bool? satisfiesPzs;
  final String? selfLink;
  final List<GetReservationShareSetting>? shareSettings;
  final bool? specificReservationRequired;
  final List<GetReservationSpecificReservation>? specificReservations;
  final String? status;
  final String? zone;

  /// Creates a new [GetReservationResult].
  /// [blockNames] Optional.
  /// [commitment] Optional.
  /// [creationTimestamp] Optional.
  /// [deleteAfterDurations] Optional.
  /// [deleteAtTime] Optional.
  /// [deletionPolicy] Optional.
  /// [description] Optional.
  /// [enableEmergentMaintenance] Optional.
  /// [id] Optional.
  /// [kind] Optional.
  /// [linkedCommitments] Optional.
  /// [name] Optional.
  /// [params] Optional.
  /// [project] Optional.
  /// [reservationBlockCount] Optional.
  /// [reservationSharingPolicies] Optional.
  /// [resourceStatuses] Optional.
  /// [satisfiesPzs] Optional.
  /// [selfLink] Optional.
  /// [shareSettings] Optional.
  /// [specificReservationRequired] Optional.
  /// [specificReservations] Optional.
  /// [status] Optional.
  /// [zone] Optional.
  const GetReservationResult({
    this.blockNames,
    this.commitment,
    this.creationTimestamp,
    this.deleteAfterDurations,
    this.deleteAtTime,
    this.deletionPolicy,
    this.description,
    this.enableEmergentMaintenance,
    this.id,
    this.kind,
    this.linkedCommitments,
    this.name,
    this.params,
    this.project,
    this.reservationBlockCount,
    this.reservationSharingPolicies,
    this.resourceStatuses,
    this.satisfiesPzs,
    this.selfLink,
    this.shareSettings,
    this.specificReservationRequired,
    this.specificReservations,
    this.status,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockNames': ?blockNames,
      'commitment': ?commitment,
      'creationTimestamp': ?creationTimestamp,
      'deleteAfterDurations': ?(() { final guardedValue = deleteAfterDurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetReservationDeleteAfterDuration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'deleteAtTime': ?deleteAtTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'enableEmergentMaintenance': ?enableEmergentMaintenance,
      'id': ?id,
      'kind': ?kind,
      'linkedCommitments': ?linkedCommitments,
      'name': ?name,
      'params': ?(() { final guardedValue = params; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetReservationParam, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'project': ?project,
      'reservationBlockCount': ?reservationBlockCount,
      'reservationSharingPolicies': ?(() { final guardedValue = reservationSharingPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetReservationReservationSharingPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'resourceStatuses': ?(() { final guardedValue = resourceStatuses; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetReservationResourceStatus, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'satisfiesPzs': ?satisfiesPzs,
      'selfLink': ?selfLink,
      'shareSettings': ?(() { final guardedValue = shareSettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetReservationShareSetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'specificReservationRequired': ?specificReservationRequired,
      'specificReservations': ?(() { final guardedValue = specificReservations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetReservationSpecificReservation, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'status': ?status,
      'zone': ?zone,
    };
  }

  factory GetReservationResult.fromMap(Map<String, dynamic> map) {
    return GetReservationResult(
      blockNames: (() { final guardedValue = map['blockNames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      commitment: (() { final guardedValue = map['commitment']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deleteAfterDurations: (() { final guardedValue = map['deleteAfterDurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetReservationDeleteAfterDuration>(guardedValue, (value) => GetReservationDeleteAfterDuration.fromMap((value as Map).cast<String, dynamic>())); })(),
      deleteAtTime: (() { final guardedValue = map['deleteAtTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enableEmergentMaintenance: (() { final guardedValue = map['enableEmergentMaintenance']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      linkedCommitments: (() { final guardedValue = map['linkedCommitments']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetReservationParam>(guardedValue, (value) => GetReservationParam.fromMap((value as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      reservationBlockCount: (() { final guardedValue = map['reservationBlockCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      reservationSharingPolicies: (() { final guardedValue = map['reservationSharingPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetReservationReservationSharingPolicy>(guardedValue, (value) => GetReservationReservationSharingPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      resourceStatuses: (() { final guardedValue = map['resourceStatuses']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetReservationResourceStatus>(guardedValue, (value) => GetReservationResourceStatus.fromMap((value as Map).cast<String, dynamic>())); })(),
      satisfiesPzs: (() { final guardedValue = map['satisfiesPzs']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      shareSettings: (() { final guardedValue = map['shareSettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetReservationShareSetting>(guardedValue, (value) => GetReservationShareSetting.fromMap((value as Map).cast<String, dynamic>())); })(),
      specificReservationRequired: (() { final guardedValue = map['specificReservationRequired']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      specificReservations: (() { final guardedValue = map['specificReservations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetReservationSpecificReservation>(guardedValue, (value) => GetReservationSpecificReservation.fromMap((value as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
