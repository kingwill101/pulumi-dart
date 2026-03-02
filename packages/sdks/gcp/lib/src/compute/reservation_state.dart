// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reservation_delete_after_duration.dart';
import 'reservation_reservation_sharing_policy.dart';
import 'reservation_resource_status.dart';
import 'reservation_share_settings.dart';
import 'reservation_specific_reservation.dart';

/// Input properties used for looking up and filtering Reservation resources.
class ReservationState {
  /// List of all reservation block names in the parent reservation.
  final pulumi.Input<List<String>>? blockNames;
  /// Full or partial URL to a parent commitment. This field displays for
  /// reservations that are tied to a commitment.
  final pulumi.Input<String>? commitment;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  /// Duration after which the reservation will be auto-deleted by Compute Engine. Cannot be used with delete_at_time.
  /// Structure is documented below.
  final pulumi.Input<ReservationDeleteAfterDuration>? deleteAfterDuration;
  /// Absolute time in future when the reservation will be auto-deleted by Compute Engine. Timestamp is represented in RFC3339 text format.
  /// Cannot be used with delete_after_duration.
  final pulumi.Input<String>? deleteAtTime;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// Indicates if this group of VMs have emergent maintenance enabled.
  final pulumi.Input<bool>? enableEmergentMaintenance;
  /// Type of the resource. Always compute#reservations for reservations.
  final pulumi.Input<String>? kind;
  /// Full or partial URL to parent commitments. This field displays for reservations that are tied to multiple commitments.
  final pulumi.Input<List<String>>? linkedCommitments;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// (Output)
  /// The number of reservation blocks associated with this reservation.
  final pulumi.Input<int>? reservationBlockCount;
  /// Sharing policy for reservations with Google Cloud managed services.
  /// Structure is documented below.
  final pulumi.Input<ReservationReservationSharingPolicy>? reservationSharingPolicy;
  /// Status information for Reservation resource.
  /// Structure is documented below.
  final pulumi.Input<List<ReservationResourceStatus>>? resourceStatuses;
  /// Reserved for future use.
  final pulumi.Input<bool>? satisfiesPzs;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
  /// The share setting for reservations.
  /// Structure is documented below.
  final pulumi.Input<ReservationShareSettings>? shareSettings;
  /// Reservation for instances with specific machine shapes.
  /// Structure is documented below.
  final pulumi.Input<ReservationSpecificReservation>? specificReservation;
  /// When set to true, only VMs that target this reservation by name can
  /// consume this reservation. Otherwise, it can be consumed by VMs with
  /// affinity for any reservation. Defaults to false.
  final pulumi.Input<bool>? specificReservationRequired;
  /// The status of the reservation.
  final pulumi.Input<String>? status;
  /// The zone where the reservation is made.
  final pulumi.Input<String>? zone;

  /// Creates a new [ReservationState].
  /// [blockNames] List of all reservation block names in the parent reservation.
  /// [commitment] Full or partial URL to a parent commitment. This field displays for
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [deleteAfterDuration] Duration after which the reservation will be auto-deleted by Compute Engine. Cannot be used with delete_at_time.
  /// [deleteAtTime] Absolute time in future when the reservation will be auto-deleted by Compute Engine. Timestamp is represented in RFC3339 text format.
  /// [description] An optional description of this resource.
  /// [enableEmergentMaintenance] Indicates if this group of VMs have emergent maintenance enabled.
  /// [kind] Type of the resource. Always compute#reservations for reservations.
  /// [linkedCommitments] Full or partial URL to parent commitments. This field displays for reservations that are tied to multiple commitments.
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [project] The ID of the project in which the resource belongs.
  /// [reservationBlockCount] (Output)
  /// [reservationSharingPolicy] Sharing policy for reservations with Google Cloud managed services.
  /// [resourceStatuses] Status information for Reservation resource.
  /// [satisfiesPzs] Reserved for future use.
  /// [selfLink] The URI of the created resource.
  /// [shareSettings] The share setting for reservations.
  /// [specificReservation] Reservation for instances with specific machine shapes.
  /// [specificReservationRequired] When set to true, only VMs that target this reservation by name can
  /// [status] The status of the reservation.
  /// [zone] The zone where the reservation is made.
  ReservationState({
    this.blockNames,
    this.commitment,
    this.creationTimestamp,
    this.deleteAfterDuration,
    this.deleteAtTime,
    this.description,
    this.enableEmergentMaintenance,
    this.kind,
    this.linkedCommitments,
    this.name,
    this.project,
    this.reservationBlockCount,
    this.reservationSharingPolicy,
    this.resourceStatuses,
    this.satisfiesPzs,
    this.selfLink,
    this.shareSettings,
    this.specificReservation,
    this.specificReservationRequired,
    this.status,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockNames': ?blockNames,
      'commitment': ?commitment,
      'creationTimestamp': ?creationTimestamp,
      'deleteAfterDuration': ?pulumi.Input.mapOptionalInputValue<ReservationDeleteAfterDuration, Map<String, dynamic>>(deleteAfterDuration, (value) => value.toMap()),
      'deleteAtTime': ?deleteAtTime,
      'description': ?description,
      'enableEmergentMaintenance': ?enableEmergentMaintenance,
      'kind': ?kind,
      'linkedCommitments': ?linkedCommitments,
      'name': ?name,
      'project': ?project,
      'reservationBlockCount': ?reservationBlockCount,
      'reservationSharingPolicy': ?pulumi.Input.mapOptionalInputValue<ReservationReservationSharingPolicy, Map<String, dynamic>>(reservationSharingPolicy, (value) => value.toMap()),
      'resourceStatuses': ?pulumi.Input.mapOptionalInputValue<List<ReservationResourceStatus>, List<Map<String, dynamic>>>(resourceStatuses, (value) => pulumi.Input.encodeList<ReservationResourceStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'satisfiesPzs': ?satisfiesPzs,
      'selfLink': ?selfLink,
      'shareSettings': ?pulumi.Input.mapOptionalInputValue<ReservationShareSettings, Map<String, dynamic>>(shareSettings, (value) => value.toMap()),
      'specificReservation': ?pulumi.Input.mapOptionalInputValue<ReservationSpecificReservation, Map<String, dynamic>>(specificReservation, (value) => value.toMap()),
      'specificReservationRequired': ?specificReservationRequired,
      'status': ?status,
      'zone': ?zone,
    };
  }

  factory ReservationState.fromMap(Map<String, dynamic> map) {
    return ReservationState(
      blockNames: map['blockNames'] == null ? null : ((map['blockNames'] as List).cast<String>()).input(),
      commitment: map['commitment'] == null ? null : (map['commitment'] as String).input(),
      creationTimestamp: map['creationTimestamp'] == null ? null : (map['creationTimestamp'] as String).input(),
      deleteAfterDuration: map['deleteAfterDuration'] == null ? null : (ReservationDeleteAfterDuration.fromMap((map['deleteAfterDuration'] as Map).cast<String, dynamic>())).input(),
      deleteAtTime: map['deleteAtTime'] == null ? null : (map['deleteAtTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      enableEmergentMaintenance: map['enableEmergentMaintenance'] == null ? null : (map['enableEmergentMaintenance'] as bool).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      linkedCommitments: map['linkedCommitments'] == null ? null : ((map['linkedCommitments'] as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      reservationBlockCount: map['reservationBlockCount'] == null ? null : (map['reservationBlockCount'] as int).input(),
      reservationSharingPolicy: map['reservationSharingPolicy'] == null ? null : (ReservationReservationSharingPolicy.fromMap((map['reservationSharingPolicy'] as Map).cast<String, dynamic>())).input(),
      resourceStatuses: map['resourceStatuses'] == null ? null : (pulumi.Input.decodeList<ReservationResourceStatus>(map['resourceStatuses'], (value) => ReservationResourceStatus.fromMap((value as Map).cast<String, dynamic>()))).input(),
      satisfiesPzs: map['satisfiesPzs'] == null ? null : (map['satisfiesPzs'] as bool).input(),
      selfLink: map['selfLink'] == null ? null : (map['selfLink'] as String).input(),
      shareSettings: map['shareSettings'] == null ? null : (ReservationShareSettings.fromMap((map['shareSettings'] as Map).cast<String, dynamic>())).input(),
      specificReservation: map['specificReservation'] == null ? null : (ReservationSpecificReservation.fromMap((map['specificReservation'] as Map).cast<String, dynamic>())).input(),
      specificReservationRequired: map['specificReservationRequired'] == null ? null : (map['specificReservationRequired'] as bool).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      zone: map['zone'] == null ? null : (map['zone'] as String).input(),
    );
  }
}

