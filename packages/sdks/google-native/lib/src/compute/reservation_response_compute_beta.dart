// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allocation_aggregate_reservation_response_compute_beta.dart';
import 'allocation_resource_status_response_compute_beta.dart';
import 'allocation_specific_skureservation_response_compute_beta.dart';
import 'duration_response_compute_beta.dart';
import 'share_settings_response_compute_beta.dart';

/// Represents a reservation resource. A reservation ensures that capacity is held in a specific zone even if the reserved VMs are not running. For more information, read Reserving zonal resources.
class ReservationResponseComputeBeta {
  /// Reservation for aggregated resources, providing shape flexibility.
  final pulumi.Input<AllocationAggregateReservationResponseComputeBeta> aggregateReservation;
  /// Full or partial URL to a parent commitment. This field displays for reservations that are tied to a commitment.
  final pulumi.Input<String> commitment;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String> creationTimestamp;
  /// Duration time relative to reservation creation when GCE will automatically delete this resource.
  final pulumi.Input<DurationResponseComputeBeta> deleteAfterDuration;
  /// Absolute time in future when the reservation will be auto-deleted by GCE. Timestamp is represented in RFC3339 text format.
  final pulumi.Input<String> deleteAtTime;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String> description;
  /// Type of the resource. Always compute#reservations for reservations.
  final pulumi.Input<String> kind;
  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String> name;
  /// Resource policies to be added to this reservation. The key is defined by user, and the value is resource policy url. This is to define placement policy with reservation.
  final pulumi.Input<Map<String, String>> resourcePolicies;
  /// Status information for Reservation resource.
  final pulumi.Input<AllocationResourceStatusResponseComputeBeta> resourceStatus;
  /// Reserved for future use.
  final pulumi.Input<bool> satisfiesPzs;
  /// Server-defined fully-qualified URL for this resource.
  final pulumi.Input<String> selfLink;
  /// Specify share-settings to create a shared reservation. This property is optional. For more information about the syntax and options for this field and its subfields, see the guide for creating a shared reservation.
  final pulumi.Input<ShareSettingsResponseComputeBeta> shareSettings;
  /// Reservation for instances with specific machine shapes.
  final pulumi.Input<AllocationSpecificSKUReservationResponseComputeBeta> specificReservation;
  /// Indicates whether the reservation can be consumed by VMs with affinity for "any" reservation. If the field is set, then only VMs that target the reservation by name can consume from this reservation.
  final pulumi.Input<bool> specificReservationRequired;
  /// The status of the reservation.
  final pulumi.Input<String> status;
  /// Zone in which the reservation resides. A zone must be provided if the reservation is created within a commitment.
  final pulumi.Input<String> zone;

  /// Creates a new [ReservationResponseComputeBeta].
  /// [aggregateReservation] Reservation for aggregated resources, providing shape flexibility.
  /// [commitment] Full or partial URL to a parent commitment. This field displays for reservations that are tied to a commitment.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [deleteAfterDuration] Duration time relative to reservation creation when GCE will automatically delete this resource.
  /// [deleteAtTime] Absolute time in future when the reservation will be auto-deleted by GCE. Timestamp is represented in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [kind] Type of the resource. Always compute#reservations for reservations.
  /// [name] The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [resourcePolicies] Resource policies to be added to this reservation. The key is defined by user, and the value is resource policy url. This is to define placement policy with reservation.
  /// [resourceStatus] Status information for Reservation resource.
  /// [satisfiesPzs] Reserved for future use.
  /// [selfLink] Server-defined fully-qualified URL for this resource.
  /// [shareSettings] Specify share-settings to create a shared reservation. This property is optional. For more information about the syntax and options for this field and its subfields, see the guide for creating a shared reservation.
  /// [specificReservation] Reservation for instances with specific machine shapes.
  /// [specificReservationRequired] Indicates whether the reservation can be consumed by VMs with affinity for "any" reservation. If the field is set, then only VMs that target the reservation by name can consume from this reservation.
  /// [status] The status of the reservation.
  /// [zone] Zone in which the reservation resides. A zone must be provided if the reservation is created within a commitment.
  const ReservationResponseComputeBeta({
    required this.aggregateReservation,
    required this.commitment,
    required this.creationTimestamp,
    required this.deleteAfterDuration,
    required this.deleteAtTime,
    required this.description,
    required this.kind,
    required this.name,
    required this.resourcePolicies,
    required this.resourceStatus,
    required this.satisfiesPzs,
    required this.selfLink,
    required this.shareSettings,
    required this.specificReservation,
    required this.specificReservationRequired,
    required this.status,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregateReservation': pulumi.Input.mapInputValue<AllocationAggregateReservationResponseComputeBeta, Map<String, dynamic>>(aggregateReservation, (value) => value.toMap()),
      'commitment': commitment,
      'creationTimestamp': creationTimestamp,
      'deleteAfterDuration': pulumi.Input.mapInputValue<DurationResponseComputeBeta, Map<String, dynamic>>(deleteAfterDuration, (value) => value.toMap()),
      'deleteAtTime': deleteAtTime,
      'description': description,
      'kind': kind,
      'name': name,
      'resourcePolicies': resourcePolicies,
      'resourceStatus': pulumi.Input.mapInputValue<AllocationResourceStatusResponseComputeBeta, Map<String, dynamic>>(resourceStatus, (value) => value.toMap()),
      'satisfiesPzs': satisfiesPzs,
      'selfLink': selfLink,
      'shareSettings': pulumi.Input.mapInputValue<ShareSettingsResponseComputeBeta, Map<String, dynamic>>(shareSettings, (value) => value.toMap()),
      'specificReservation': pulumi.Input.mapInputValue<AllocationSpecificSKUReservationResponseComputeBeta, Map<String, dynamic>>(specificReservation, (value) => value.toMap()),
      'specificReservationRequired': specificReservationRequired,
      'status': status,
      'zone': zone,
    };
  }

  factory ReservationResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return ReservationResponseComputeBeta(
      aggregateReservation: pulumi.Input.fromValue(AllocationAggregateReservationResponseComputeBeta.fromMap((map['aggregateReservation']! as Map).cast<String, dynamic>())),
      commitment: pulumi.Input.fromValue(map['commitment'] as String),
      creationTimestamp: pulumi.Input.fromValue(map['creationTimestamp'] as String),
      deleteAfterDuration: pulumi.Input.fromValue(DurationResponseComputeBeta.fromMap((map['deleteAfterDuration']! as Map).cast<String, dynamic>())),
      deleteAtTime: pulumi.Input.fromValue(map['deleteAtTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourcePolicies: pulumi.Input.fromValue((map['resourcePolicies'] as Map).cast<String, String>()),
      resourceStatus: pulumi.Input.fromValue(AllocationResourceStatusResponseComputeBeta.fromMap((map['resourceStatus']! as Map).cast<String, dynamic>())),
      satisfiesPzs: pulumi.Input.fromValue(map['satisfiesPzs'] as bool),
      selfLink: pulumi.Input.fromValue(map['selfLink'] as String),
      shareSettings: pulumi.Input.fromValue(ShareSettingsResponseComputeBeta.fromMap((map['shareSettings']! as Map).cast<String, dynamic>())),
      specificReservation: pulumi.Input.fromValue(AllocationSpecificSKUReservationResponseComputeBeta.fromMap((map['specificReservation']! as Map).cast<String, dynamic>())),
      specificReservationRequired: pulumi.Input.fromValue(map['specificReservationRequired'] as bool),
      status: pulumi.Input.fromValue(map['status'] as String),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}

