// ignore_for_file: unused_element, unnecessary_cast

import 'allocation_aggregate_reservation_response_compute_beta.dart';
import 'allocation_resource_status_response_compute_beta.dart';
import 'allocation_specific_skureservation_response_compute_beta.dart';
import 'duration_response_compute_beta.dart';
import 'share_settings_response_compute_beta.dart';

/// Result data returned by getReservation.
class GetReservationComputeBetaResult {
  /// Reservation for aggregated resources, providing shape flexibility.
  final AllocationAggregateReservationResponseComputeBeta aggregateReservation;
  /// Full or partial URL to a parent commitment. This field displays for reservations that are tied to a commitment.
  final String commitment;
  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;
  /// Duration time relative to reservation creation when GCE will automatically delete this resource.
  final DurationResponseComputeBeta deleteAfterDuration;
  /// Absolute time in future when the reservation will be auto-deleted by GCE. Timestamp is represented in RFC3339 text format.
  final String deleteAtTime;
  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;
  /// Type of the resource. Always compute#reservations for reservations.
  final String kind;
  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;
  /// Resource policies to be added to this reservation. The key is defined by user, and the value is resource policy url. This is to define placement policy with reservation.
  final Map<String, String> resourcePolicies;
  /// Status information for Reservation resource.
  final AllocationResourceStatusResponseComputeBeta resourceStatus;
  /// Reserved for future use.
  final bool satisfiesPzs;
  /// Server-defined fully-qualified URL for this resource.
  final String selfLink;
  /// Specify share-settings to create a shared reservation. This property is optional. For more information about the syntax and options for this field and its subfields, see the guide for creating a shared reservation.
  final ShareSettingsResponseComputeBeta shareSettings;
  /// Reservation for instances with specific machine shapes.
  final AllocationSpecificSKUReservationResponseComputeBeta specificReservation;
  /// Indicates whether the reservation can be consumed by VMs with affinity for "any" reservation. If the field is set, then only VMs that target the reservation by name can consume from this reservation.
  final bool specificReservationRequired;
  /// The status of the reservation.
  final String status;
  /// Zone in which the reservation resides. A zone must be provided if the reservation is created within a commitment.
  final String zone;

  /// Creates a new [GetReservationComputeBetaResult].
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
  GetReservationComputeBetaResult({
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
      'aggregateReservation': aggregateReservation.toMap(),
      'commitment': commitment,
      'creationTimestamp': creationTimestamp,
      'deleteAfterDuration': deleteAfterDuration.toMap(),
      'deleteAtTime': deleteAtTime,
      'description': description,
      'kind': kind,
      'name': name,
      'resourcePolicies': resourcePolicies,
      'resourceStatus': resourceStatus.toMap(),
      'satisfiesPzs': satisfiesPzs,
      'selfLink': selfLink,
      'shareSettings': shareSettings.toMap(),
      'specificReservation': specificReservation.toMap(),
      'specificReservationRequired': specificReservationRequired,
      'status': status,
      'zone': zone,
    };
  }

  factory GetReservationComputeBetaResult.fromMap(Map<String, dynamic> map) {
    return GetReservationComputeBetaResult(
      aggregateReservation: AllocationAggregateReservationResponseComputeBeta.fromMap((map['aggregateReservation']! as Map).cast<String, dynamic>()),
      commitment: map['commitment'] as String,
      creationTimestamp: map['creationTimestamp'] as String,
      deleteAfterDuration: DurationResponseComputeBeta.fromMap((map['deleteAfterDuration']! as Map).cast<String, dynamic>()),
      deleteAtTime: map['deleteAtTime'] as String,
      description: map['description'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      resourcePolicies: (map['resourcePolicies'] as Map).cast<String, String>(),
      resourceStatus: AllocationResourceStatusResponseComputeBeta.fromMap((map['resourceStatus']! as Map).cast<String, dynamic>()),
      satisfiesPzs: map['satisfiesPzs'] as bool,
      selfLink: map['selfLink'] as String,
      shareSettings: ShareSettingsResponseComputeBeta.fromMap((map['shareSettings']! as Map).cast<String, dynamic>()),
      specificReservation: AllocationSpecificSKUReservationResponseComputeBeta.fromMap((map['specificReservation']! as Map).cast<String, dynamic>()),
      specificReservationRequired: map['specificReservationRequired'] as bool,
      status: map['status'] as String,
      zone: map['zone'] as String,
    );
  }
}

