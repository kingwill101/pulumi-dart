// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allocation_aggregate_reservation.dart';
import 'allocation_specific_skureservation.dart';
import 'duration.dart';
import 'share_settings.dart';

/// Represents a reservation resource. A reservation ensures that capacity is held in a specific zone even if the reserved VMs are not running. For more information, read Reserving zonal resources.
class Reservation {
  /// Reservation for aggregated resources, providing shape flexibility.
  final pulumi.Input<AllocationAggregateReservation>? aggregateReservation;

  /// Duration time relative to reservation creation when GCE will automatically delete this resource.
  final pulumi.Input<Duration>? deleteAfterDuration;

  /// Absolute time in future when the reservation will be auto-deleted by GCE. Timestamp is represented in RFC3339 text format.
  final pulumi.Input<String>? deleteAtTime;

  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// Resource policies to be added to this reservation. The key is defined by user, and the value is resource policy url. This is to define placement policy with reservation.
  final pulumi.Input<Map<String, String>>? resourcePolicies;

  /// Specify share-settings to create a shared reservation. This property is optional. For more information about the syntax and options for this field and its subfields, see the guide for creating a shared reservation.
  final pulumi.Input<ShareSettings>? shareSettings;

  /// Reservation for instances with specific machine shapes.
  final pulumi.Input<AllocationSpecificSKUReservation>? specificReservation;

  /// Indicates whether the reservation can be consumed by VMs with affinity for "any" reservation. If the field is set, then only VMs that target the reservation by name can consume from this reservation.
  final pulumi.Input<bool>? specificReservationRequired;

  /// Zone in which the reservation resides. A zone must be provided if the reservation is created within a commitment.
  final pulumi.Input<String>? zone;

  /// Creates a new [Reservation].
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
  Reservation({
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
      'aggregateReservation':
          ?pulumi.Input.mapOptionalInputValue<
            AllocationAggregateReservation,
            Map<String, dynamic>
          >(aggregateReservation, (value) => value.toMap()),
      'deleteAfterDuration':
          ?pulumi.Input.mapOptionalInputValue<Duration, Map<String, dynamic>>(
            deleteAfterDuration,
            (value) => value.toMap(),
          ),
      'deleteAtTime': ?deleteAtTime,
      'description': ?description,
      'name': ?name,
      'resourcePolicies': ?resourcePolicies,
      'shareSettings':
          ?pulumi.Input.mapOptionalInputValue<
            ShareSettings,
            Map<String, dynamic>
          >(shareSettings, (value) => value.toMap()),
      'specificReservation':
          ?pulumi.Input.mapOptionalInputValue<
            AllocationSpecificSKUReservation,
            Map<String, dynamic>
          >(specificReservation, (value) => value.toMap()),
      'specificReservationRequired': ?specificReservationRequired,
      'zone': ?zone,
    };
  }

  factory Reservation.fromMap(Map<String, dynamic> map) {
    return Reservation(
      aggregateReservation: (() {
        final guardedValue = map['aggregateReservation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AllocationAggregateReservation.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      deleteAfterDuration: (() {
        final guardedValue = map['deleteAfterDuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Duration.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      deleteAtTime: (() {
        final guardedValue = map['deleteAtTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourcePolicies: (() {
        final guardedValue = map['resourcePolicies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      shareSettings: (() {
        final guardedValue = map['shareSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ShareSettings.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      specificReservation: (() {
        final guardedValue = map['specificReservation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AllocationSpecificSKUReservation.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      specificReservationRequired: (() {
        final guardedValue = map['specificReservationRequired'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      zone: (() {
        final guardedValue = map['zone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
