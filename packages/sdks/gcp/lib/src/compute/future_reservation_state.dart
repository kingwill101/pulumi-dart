// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'future_reservation_aggregate_reservation.dart';
import 'future_reservation_auto_created_reservations_duration.dart';
import 'future_reservation_commitment_info.dart';
import 'future_reservation_share_settings.dart';
import 'future_reservation_specific_sku_properties.dart';
import 'future_reservation_status.dart';
import 'future_reservation_time_window.dart';

/// Input properties used for looking up and filtering FutureReservation resources.
class FutureReservationState {
  /// Aggregate reservation details for the future reservation.
  /// Structure is documented below.
  final pulumi.Input<FutureReservationAggregateReservation>? aggregateReservation;
  /// Future timestamp when the FR auto-created reservations will be deleted by Compute Engine.
  final pulumi.Input<String>? autoCreatedReservationsDeleteTime;
  /// Specifies the duration of auto-created reservations. It represents relative time to future reservation startTime when auto-created reservations will be automatically deleted by Compute Engine. Duration time unit is represented as a count of seconds and fractions of seconds at nanosecond resolution.
  /// Structure is documented below.
  final pulumi.Input<FutureReservationAutoCreatedReservationsDuration>? autoCreatedReservationsDuration;
  /// Setting for enabling or disabling automatic deletion for auto-created reservation. If set to true, auto-created reservations will be deleted at Future Reservation's end time (default) or at user's defined timestamp if any of the [autoCreatedReservationsDeleteTime, autoCreatedReservationsDuration] values is specified. For keeping auto-created reservation indefinitely, this value should be set to false.
  final pulumi.Input<bool>? autoDeleteAutoCreatedReservations;
  /// If not present, then FR will not deliver a new commitment or update an existing commitment.
  /// Structure is documented below.
  final pulumi.Input<FutureReservationCommitmentInfo>? commitmentInfo;
  /// The creation timestamp for this future reservation in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  /// Type of the deployment requested as part of future reservation.
  /// Possible values are: `DENSE`, `FLEXIBLE`.
  final pulumi.Input<String>? deploymentType;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the las
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// Name prefix for the reservations to be created at the time of delivery. The name prefix must comply with RFC1035. Maximum allowed length for name prefix is 20. Automatically created reservations name format will be -date-####.
  final pulumi.Input<String>? namePrefix;
  /// Planning state before being submitted for evaluation
  /// Possible values are: `DRAFT`, `SUBMITTED`.
  final pulumi.Input<String>? planningStatus;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The reservation mode which determines reservation-termination behavior and expected pricing.
  /// Possible values are: `CALENDAR`, `DEFAULT`.
  final pulumi.Input<String>? reservationMode;
  /// Name of reservations where the capacity is provisioned at the time of delivery of future reservations. If the reservation with the given name does not exist already, it is created automatically at the time of Approval with INACTIVE state till specified start-time. Either provide the reservationName or a namePrefix.
  final pulumi.Input<String>? reservationName;
  /// Maintenance information for this reservation
  /// Possible values are: `GROUPED`, `INDEPENDENT`.
  final pulumi.Input<String>? schedulingType;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
  /// Server-defined URL for this resource with the resource id.
  final pulumi.Input<String>? selfLinkWithId;
  /// Settings for sharing the future reservation
  /// Structure is documented below.
  final pulumi.Input<FutureReservationShareSettings>? shareSettings;
  /// Indicates whether the auto-created reservation can be consumed by VMs with affinity for "any" reservation. If the field is set, then only VMs that target the reservation by name can consume from the delivered reservation.
  final pulumi.Input<bool>? specificReservationRequired;
  /// Future Reservation configuration to indicate instance properties and total count.
  /// Structure is documented below.
  final pulumi.Input<FutureReservationSpecificSkuProperties>? specificSkuProperties;
  /// [Output only] Status of the Future Reservation
  /// Structure is documented below.
  final pulumi.Input<List<FutureReservationStatus>>? statuses;
  /// Time window for this Future Reservation.
  /// Structure is documented below.
  final pulumi.Input<FutureReservationTimeWindow>? timeWindow;
  /// URL of the Zone where this future reservation resides.
  final pulumi.Input<String>? zone;

  /// Creates a new [FutureReservationState].
  /// [aggregateReservation] Aggregate reservation details for the future reservation.
  /// [autoCreatedReservationsDeleteTime] Future timestamp when the FR auto-created reservations will be deleted by Compute Engine.
  /// [autoCreatedReservationsDuration] Specifies the duration of auto-created reservations. It represents relative time to future reservation startTime when auto-created reservations will be automatically deleted by Compute Engine. Duration time unit is represented as a count of seconds and fractions of seconds at nanosecond resolution.
  /// [autoDeleteAutoCreatedReservations] Setting for enabling or disabling automatic deletion for auto-created reservation. If set to true, auto-created reservations will be deleted at Future Reservation's end time (default) or at user's defined timestamp if any of the [autoCreatedReservationsDeleteTime, autoCreatedReservationsDuration] values is specified. For keeping auto-created reservation indefinitely, this value should be set to false.
  /// [commitmentInfo] If not present, then FR will not deliver a new commitment or update an existing commitment.
  /// [creationTimestamp] The creation timestamp for this future reservation in RFC3339 text format.
  /// [deploymentType] Type of the deployment requested as part of future reservation.
  /// [description] An optional description of this resource.
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [namePrefix] Name prefix for the reservations to be created at the time of delivery. The name prefix must comply with RFC1035. Maximum allowed length for name prefix is 20. Automatically created reservations name format will be -date-####.
  /// [planningStatus] Planning state before being submitted for evaluation
  /// [project] The ID of the project in which the resource belongs.
  /// [reservationMode] The reservation mode which determines reservation-termination behavior and expected pricing.
  /// [reservationName] Name of reservations where the capacity is provisioned at the time of delivery of future reservations. If the reservation with the given name does not exist already, it is created automatically at the time of Approval with INACTIVE state till specified start-time. Either provide the reservationName or a namePrefix.
  /// [schedulingType] Maintenance information for this reservation
  /// [selfLink] The URI of the created resource.
  /// [selfLinkWithId] Server-defined URL for this resource with the resource id.
  /// [shareSettings] Settings for sharing the future reservation
  /// [specificReservationRequired] Indicates whether the auto-created reservation can be consumed by VMs with affinity for "any" reservation. If the field is set, then only VMs that target the reservation by name can consume from the delivered reservation.
  /// [specificSkuProperties] Future Reservation configuration to indicate instance properties and total count.
  /// [statuses] [Output only] Status of the Future Reservation
  /// [timeWindow] Time window for this Future Reservation.
  /// [zone] URL of the Zone where this future reservation resides.
  FutureReservationState({
    this.aggregateReservation,
    this.autoCreatedReservationsDeleteTime,
    this.autoCreatedReservationsDuration,
    this.autoDeleteAutoCreatedReservations,
    this.commitmentInfo,
    this.creationTimestamp,
    this.deploymentType,
    this.description,
    this.name,
    this.namePrefix,
    this.planningStatus,
    this.project,
    this.reservationMode,
    this.reservationName,
    this.schedulingType,
    this.selfLink,
    this.selfLinkWithId,
    this.shareSettings,
    this.specificReservationRequired,
    this.specificSkuProperties,
    this.statuses,
    this.timeWindow,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregateReservation': ?pulumi.Input.mapOptionalInputValue<FutureReservationAggregateReservation, Map<String, dynamic>>(aggregateReservation, (value) => value.toMap()),
      'autoCreatedReservationsDeleteTime': ?autoCreatedReservationsDeleteTime,
      'autoCreatedReservationsDuration': ?pulumi.Input.mapOptionalInputValue<FutureReservationAutoCreatedReservationsDuration, Map<String, dynamic>>(autoCreatedReservationsDuration, (value) => value.toMap()),
      'autoDeleteAutoCreatedReservations': ?autoDeleteAutoCreatedReservations,
      'commitmentInfo': ?pulumi.Input.mapOptionalInputValue<FutureReservationCommitmentInfo, Map<String, dynamic>>(commitmentInfo, (value) => value.toMap()),
      'creationTimestamp': ?creationTimestamp,
      'deploymentType': ?deploymentType,
      'description': ?description,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'planningStatus': ?planningStatus,
      'project': ?project,
      'reservationMode': ?reservationMode,
      'reservationName': ?reservationName,
      'schedulingType': ?schedulingType,
      'selfLink': ?selfLink,
      'selfLinkWithId': ?selfLinkWithId,
      'shareSettings': ?pulumi.Input.mapOptionalInputValue<FutureReservationShareSettings, Map<String, dynamic>>(shareSettings, (value) => value.toMap()),
      'specificReservationRequired': ?specificReservationRequired,
      'specificSkuProperties': ?pulumi.Input.mapOptionalInputValue<FutureReservationSpecificSkuProperties, Map<String, dynamic>>(specificSkuProperties, (value) => value.toMap()),
      'statuses': ?pulumi.Input.mapOptionalInputValue<List<FutureReservationStatus>, List<Map<String, dynamic>>>(statuses, (value) => pulumi.Input.encodeList<FutureReservationStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeWindow': ?pulumi.Input.mapOptionalInputValue<FutureReservationTimeWindow, Map<String, dynamic>>(timeWindow, (value) => value.toMap()),
      'zone': ?zone,
    };
  }

  factory FutureReservationState.fromMap(Map<String, dynamic> map) {
    return FutureReservationState(
      aggregateReservation: map['aggregateReservation'] == null ? null : (FutureReservationAggregateReservation.fromMap((map['aggregateReservation'] as Map).cast<String, dynamic>())).input(),
      autoCreatedReservationsDeleteTime: map['autoCreatedReservationsDeleteTime'] == null ? null : (map['autoCreatedReservationsDeleteTime'] as String).input(),
      autoCreatedReservationsDuration: map['autoCreatedReservationsDuration'] == null ? null : (FutureReservationAutoCreatedReservationsDuration.fromMap((map['autoCreatedReservationsDuration'] as Map).cast<String, dynamic>())).input(),
      autoDeleteAutoCreatedReservations: map['autoDeleteAutoCreatedReservations'] == null ? null : (map['autoDeleteAutoCreatedReservations'] as bool).input(),
      commitmentInfo: map['commitmentInfo'] == null ? null : (FutureReservationCommitmentInfo.fromMap((map['commitmentInfo'] as Map).cast<String, dynamic>())).input(),
      creationTimestamp: map['creationTimestamp'] == null ? null : (map['creationTimestamp'] as String).input(),
      deploymentType: map['deploymentType'] == null ? null : (map['deploymentType'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      namePrefix: map['namePrefix'] == null ? null : (map['namePrefix'] as String).input(),
      planningStatus: map['planningStatus'] == null ? null : (map['planningStatus'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      reservationMode: map['reservationMode'] == null ? null : (map['reservationMode'] as String).input(),
      reservationName: map['reservationName'] == null ? null : (map['reservationName'] as String).input(),
      schedulingType: map['schedulingType'] == null ? null : (map['schedulingType'] as String).input(),
      selfLink: map['selfLink'] == null ? null : (map['selfLink'] as String).input(),
      selfLinkWithId: map['selfLinkWithId'] == null ? null : (map['selfLinkWithId'] as String).input(),
      shareSettings: map['shareSettings'] == null ? null : (FutureReservationShareSettings.fromMap((map['shareSettings'] as Map).cast<String, dynamic>())).input(),
      specificReservationRequired: map['specificReservationRequired'] == null ? null : (map['specificReservationRequired'] as bool).input(),
      specificSkuProperties: map['specificSkuProperties'] == null ? null : (FutureReservationSpecificSkuProperties.fromMap((map['specificSkuProperties'] as Map).cast<String, dynamic>())).input(),
      statuses: map['statuses'] == null ? null : (pulumi.Input.decodeList<FutureReservationStatus>(map['statuses'], (value) => FutureReservationStatus.fromMap((value as Map).cast<String, dynamic>()))).input(),
      timeWindow: map['timeWindow'] == null ? null : (FutureReservationTimeWindow.fromMap((map['timeWindow'] as Map).cast<String, dynamic>())).input(),
      zone: map['zone'] == null ? null : (map['zone'] as String).input(),
    );
  }
}

