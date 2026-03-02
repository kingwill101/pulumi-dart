// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allocation_aggregate_reservation_compute_beta.dart';
import 'allocation_specific_skureservation_compute_beta.dart';
import 'duration_compute_beta.dart';
import 'share_settings_compute_beta.dart';

/// Represents a reservation resource. A reservation ensures that capacity is held in a specific zone even if the reserved VMs are not running. For more information, read Reserving zonal resources.
class ReservationComputeBeta {
  /// Reservation for aggregated resources, providing shape flexibility.
  final pulumi.Input<AllocationAggregateReservationComputeBeta>? aggregateReservation;
  /// Duration time relative to reservation creation when GCE will automatically delete this resource.
  final pulumi.Input<DurationComputeBeta>? deleteAfterDuration;
  /// Absolute time in future when the reservation will be auto-deleted by GCE. Timestamp is represented in RFC3339 text format.
  final pulumi.Input<String>? deleteAtTime;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// Resource policies to be added to this reservation. The key is defined by user, and the value is resource policy url. This is to define placement policy with reservation.
  final pulumi.Input<Map<String, String>>? resourcePolicies;
  /// Specify share-settings to create a shared reservation. This property is optional. For more information about the syntax and options for this field and its subfields, see the guide for creating a shared reservation.
  final pulumi.Input<ShareSettingsComputeBeta>? shareSettings;
  /// Reservation for instances with specific machine shapes.
  final pulumi.Input<AllocationSpecificSKUReservationComputeBeta>? specificReservation;
  /// Indicates whether the reservation can be consumed by VMs with affinity for "any" reservation. If the field is set, then only VMs that target the reservation by name can consume from this reservation.
  final pulumi.Input<bool>? specificReservationRequired;
  /// Zone in which the reservation resides. A zone must be provided if the reservation is created within a commitment.
  final pulumi.Input<String>? zone;

  /// Creates a new [ReservationComputeBeta].
  /// [aggregateReservation] Reservation for aggregated resources, providing shape flexibility.
  /// [deleteAfterDuration] Duration time relative to reservation creation when GCE will automatically delete this resource.
  /// [deleteAtTime] Absolute time in future when the reservation will be auto-deleted by GCE. Timestamp is represented in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [name] The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [resourcePolicies] Resource policies to be added to this reservation. The key is defined by user, and the value is resource policy url. This is to define placement policy with reservation.
  /// [shareSettings] Specify share-settings to create a shared reservation. This property is optional. For more information about the syntax and options for this field and its subfields, see the guide for creating a shared reservation.
  /// [specificReservation] Reservation for instances with specific machine shapes.
  /// [specificReservationRequired] Indicates whether the reservation can be consumed by VMs with affinity for "any" reservation. If the field is set, then only VMs that target the reservation by name can consume from this reservation.
  /// [zone] Zone in which the reservation resides. A zone must be provided if the reservation is created within a commitment.
  ReservationComputeBeta({
    this.aggregateReservation,
    this.deleteAfterDuration,
    this.deleteAtTime,
    this.description,
    this.name,
    this.resourcePolicies,
    this.shareSettings,
    this.specificReservation,
    this.specificReservationRequired,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregateReservation': ?pulumi.Input.mapOptionalInputValue<AllocationAggregateReservationComputeBeta, Map<String, dynamic>>(aggregateReservation, (value) => value.toMap()),
      'deleteAfterDuration': ?pulumi.Input.mapOptionalInputValue<DurationComputeBeta, Map<String, dynamic>>(deleteAfterDuration, (value) => value.toMap()),
      'deleteAtTime': ?deleteAtTime,
      'description': ?description,
      'name': ?name,
      'resourcePolicies': ?resourcePolicies,
      'shareSettings': ?pulumi.Input.mapOptionalInputValue<ShareSettingsComputeBeta, Map<String, dynamic>>(shareSettings, (value) => value.toMap()),
      'specificReservation': ?pulumi.Input.mapOptionalInputValue<AllocationSpecificSKUReservationComputeBeta, Map<String, dynamic>>(specificReservation, (value) => value.toMap()),
      'specificReservationRequired': ?specificReservationRequired,
      'zone': ?zone,
    };
  }

  factory ReservationComputeBeta.fromMap(Map<String, dynamic> map) {
    return ReservationComputeBeta(
      aggregateReservation: map['aggregateReservation'] == null ? null : (AllocationAggregateReservationComputeBeta.fromMap((map['aggregateReservation'] as Map).cast<String, dynamic>())).input(),
      deleteAfterDuration: map['deleteAfterDuration'] == null ? null : (DurationComputeBeta.fromMap((map['deleteAfterDuration'] as Map).cast<String, dynamic>())).input(),
      deleteAtTime: map['deleteAtTime'] == null ? null : (map['deleteAtTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourcePolicies: map['resourcePolicies'] == null ? null : ((map['resourcePolicies'] as Map).cast<String, String>()).input(),
      shareSettings: map['shareSettings'] == null ? null : (ShareSettingsComputeBeta.fromMap((map['shareSettings'] as Map).cast<String, dynamic>())).input(),
      specificReservation: map['specificReservation'] == null ? null : (AllocationSpecificSKUReservationComputeBeta.fromMap((map['specificReservation'] as Map).cast<String, dynamic>())).input(),
      specificReservationRequired: map['specificReservationRequired'] == null ? null : (map['specificReservationRequired'] as bool).input(),
      zone: map['zone'] == null ? null : (map['zone'] as String).input(),
    );
  }
}

