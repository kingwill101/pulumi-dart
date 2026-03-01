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
    pulumi.Output<List<String>>? blockNames,
    pulumi.Output<String>? commitment,
    pulumi.Output<String>? creationTimestamp,
    pulumi.Output<ReservationDeleteAfterDuration>? deleteAfterDuration,
    pulumi.Output<String>? deleteAtTime,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? enableEmergentMaintenance,
    pulumi.Output<String>? kind,
    pulumi.Output<List<String>>? linkedCommitments,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<int>? reservationBlockCount,
    pulumi.Output<ReservationReservationSharingPolicy>? reservationSharingPolicy,
    pulumi.Output<List<ReservationResourceStatus>>? resourceStatuses,
    pulumi.Output<bool>? satisfiesPzs,
    pulumi.Output<String>? selfLink,
    pulumi.Output<ReservationShareSettings>? shareSettings,
    pulumi.Output<ReservationSpecificReservation>? specificReservation,
    pulumi.Output<bool>? specificReservationRequired,
    pulumi.Output<String>? status,
    pulumi.Output<String>? zone,
  }) :
      blockNames = pulumi.Input.asOptionalInput<List<String>>(blockNames),
      commitment = pulumi.Input.asOptionalInput<String>(commitment),
      creationTimestamp = pulumi.Input.asOptionalInput<String>(creationTimestamp),
      deleteAfterDuration = pulumi.Input.asOptionalInput<ReservationDeleteAfterDuration>(deleteAfterDuration),
      deleteAtTime = pulumi.Input.asOptionalInput<String>(deleteAtTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      enableEmergentMaintenance = pulumi.Input.asOptionalInput<bool>(enableEmergentMaintenance),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      linkedCommitments = pulumi.Input.asOptionalInput<List<String>>(linkedCommitments),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      reservationBlockCount = pulumi.Input.asOptionalInput<int>(reservationBlockCount),
      reservationSharingPolicy = pulumi.Input.asOptionalInput<ReservationReservationSharingPolicy>(reservationSharingPolicy),
      resourceStatuses = pulumi.Input.asOptionalInput<List<ReservationResourceStatus>>(resourceStatuses),
      satisfiesPzs = pulumi.Input.asOptionalInput<bool>(satisfiesPzs),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
      shareSettings = pulumi.Input.asOptionalInput<ReservationShareSettings>(shareSettings),
      specificReservation = pulumi.Input.asOptionalInput<ReservationSpecificReservation>(specificReservation),
      specificReservationRequired = pulumi.Input.asOptionalInput<bool>(specificReservationRequired),
      status = pulumi.Input.asOptionalInput<String>(status),
      zone = pulumi.Input.asOptionalInput<String>(zone);

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
      blockNames: map['blockNames'] == null ? null : pulumi.Output.create<List<String>>((map['blockNames'] as List).cast<String>()),
      commitment: map['commitment'] == null ? null : pulumi.Output.create<String>(map['commitment'] as String),
      creationTimestamp: map['creationTimestamp'] == null ? null : pulumi.Output.create<String>(map['creationTimestamp'] as String),
      deleteAfterDuration: map['deleteAfterDuration'] == null ? null : pulumi.Output.create<ReservationDeleteAfterDuration>(ReservationDeleteAfterDuration.fromMap((map['deleteAfterDuration'] as Map).cast<String, dynamic>())),
      deleteAtTime: map['deleteAtTime'] == null ? null : pulumi.Output.create<String>(map['deleteAtTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enableEmergentMaintenance: map['enableEmergentMaintenance'] == null ? null : pulumi.Output.create<bool>(map['enableEmergentMaintenance'] as bool),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      linkedCommitments: map['linkedCommitments'] == null ? null : pulumi.Output.create<List<String>>((map['linkedCommitments'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      reservationBlockCount: map['reservationBlockCount'] == null ? null : pulumi.Output.create<int>(map['reservationBlockCount'] as int),
      reservationSharingPolicy: map['reservationSharingPolicy'] == null ? null : pulumi.Output.create<ReservationReservationSharingPolicy>(ReservationReservationSharingPolicy.fromMap((map['reservationSharingPolicy'] as Map).cast<String, dynamic>())),
      resourceStatuses: map['resourceStatuses'] == null ? null : pulumi.Output.create<List<ReservationResourceStatus>>(pulumi.Input.decodeList<ReservationResourceStatus>(map['resourceStatuses'], (value) => ReservationResourceStatus.fromMap((value as Map).cast<String, dynamic>()))),
      satisfiesPzs: map['satisfiesPzs'] == null ? null : pulumi.Output.create<bool>(map['satisfiesPzs'] as bool),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
      shareSettings: map['shareSettings'] == null ? null : pulumi.Output.create<ReservationShareSettings>(ReservationShareSettings.fromMap((map['shareSettings'] as Map).cast<String, dynamic>())),
      specificReservation: map['specificReservation'] == null ? null : pulumi.Output.create<ReservationSpecificReservation>(ReservationSpecificReservation.fromMap((map['specificReservation'] as Map).cast<String, dynamic>())),
      specificReservationRequired: map['specificReservationRequired'] == null ? null : pulumi.Output.create<bool>(map['specificReservationRequired'] as bool),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      zone: map['zone'] == null ? null : pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

