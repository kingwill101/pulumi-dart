// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reservation_delete_after_duration.dart';
import 'reservation_params.dart';
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
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// (Optional, Beta)
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
  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  final pulumi.Input<ReservationParams>? params;
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of this resource.
  /// [enableEmergentMaintenance] (Optional, Beta)
  /// [kind] Type of the resource. Always compute#reservations for reservations.
  /// [linkedCommitments] Full or partial URL to parent commitments. This field displays for reservations that are tied to multiple commitments.
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [params] Additional params passed with the request, but not persisted as part of resource payload
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
  const ReservationState({
    this.blockNames,
    this.commitment,
    this.creationTimestamp,
    this.deleteAfterDuration,
    this.deleteAtTime,
    this.deletionPolicy,
    this.description,
    this.enableEmergentMaintenance,
    this.kind,
    this.linkedCommitments,
    this.name,
    this.params,
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
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'enableEmergentMaintenance': ?enableEmergentMaintenance,
      'kind': ?kind,
      'linkedCommitments': ?linkedCommitments,
      'name': ?name,
      'params': ?pulumi.Input.mapOptionalInputValue<ReservationParams, Map<String, dynamic>>(params, (value) => value.toMap()),
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
      blockNames: (() { final guardedValue = map['blockNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      commitment: (() { final guardedValue = map['commitment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteAfterDuration: (() { final guardedValue = map['deleteAfterDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReservationDeleteAfterDuration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deleteAtTime: (() { final guardedValue = map['deleteAtTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableEmergentMaintenance: (() { final guardedValue = map['enableEmergentMaintenance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linkedCommitments: (() { final guardedValue = map['linkedCommitments']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReservationParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservationBlockCount: (() { final guardedValue = map['reservationBlockCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      reservationSharingPolicy: (() { final guardedValue = map['reservationSharingPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReservationReservationSharingPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceStatuses: (() { final guardedValue = map['resourceStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReservationResourceStatus>(guardedValue, (value) => ReservationResourceStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
      satisfiesPzs: (() { final guardedValue = map['satisfiesPzs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shareSettings: (() { final guardedValue = map['shareSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReservationShareSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      specificReservation: (() { final guardedValue = map['specificReservation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReservationSpecificReservation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      specificReservationRequired: (() { final guardedValue = map['specificReservationRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
