// ignore_for_file: unused_element, unnecessary_cast

import 'allocation_aggregate_reservation_response.dart';
import 'allocation_resource_status_response.dart';
import 'allocation_specific_skureservation_response.dart';
import 'duration_response.dart';
import 'share_settings_response.dart';

/// Result data returned by getReservation.
class GetReservationResult {
  /// Reservation for aggregated resources, providing shape flexibility.
  final AllocationAggregateReservationResponse? aggregateReservation;
  /// Full or partial URL to a parent commitment. This field displays for reservations that are tied to a commitment.
  final String? commitment;
  /// Creation timestamp in RFC3339 text format.
  final String? creationTimestamp;
  /// Duration time relative to reservation creation when GCE will automatically delete this resource.
  final DurationResponse? deleteAfterDuration;
  /// Absolute time in future when the reservation will be auto-deleted by GCE. Timestamp is represented in RFC3339 text format.
  final String? deleteAtTime;
  /// An optional description of this resource. Provide this property when you create the resource.
  final String? description;
  /// Type of the resource. Always compute#reservations for reservations.
  final String? kind;
  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String? name;
  /// Resource policies to be added to this reservation. The key is defined by user, and the value is resource policy url. This is to define placement policy with reservation.
  final Map<String, String>? resourcePolicies;
  /// Status information for Reservation resource.
  final AllocationResourceStatusResponse? resourceStatus;
  /// Reserved for future use.
  final bool? satisfiesPzs;
  /// Server-defined fully-qualified URL for this resource.
  final String? selfLink;
  /// Server-defined URL for this resource with the resource id.
  final String? selfLinkWithId;
  /// Specify share-settings to create a shared reservation. This property is optional. For more information about the syntax and options for this field and its subfields, see the guide for creating a shared reservation.
  final ShareSettingsResponse? shareSettings;
  /// Reservation for instances with specific machine shapes.
  final AllocationSpecificSKUReservationResponse? specificReservation;
  /// Indicates whether the reservation can be consumed by VMs with affinity for "any" reservation. If the field is set, then only VMs that target the reservation by name can consume from this reservation.
  final bool? specificReservationRequired;
  /// The status of the reservation.
  final String? status;
  /// Zone in which the reservation resides. A zone must be provided if the reservation is created within a commitment.
  final String? zone;

  /// Creates a new [GetReservationResult].
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
  /// [selfLinkWithId] Server-defined URL for this resource with the resource id.
  /// [shareSettings] Specify share-settings to create a shared reservation. This property is optional. For more information about the syntax and options for this field and its subfields, see the guide for creating a shared reservation.
  /// [specificReservation] Reservation for instances with specific machine shapes.
  /// [specificReservationRequired] Indicates whether the reservation can be consumed by VMs with affinity for "any" reservation. If the field is set, then only VMs that target the reservation by name can consume from this reservation.
  /// [status] The status of the reservation.
  /// [zone] Zone in which the reservation resides. A zone must be provided if the reservation is created within a commitment.
  const GetReservationResult({
    this.aggregateReservation,
    this.commitment,
    this.creationTimestamp,
    this.deleteAfterDuration,
    this.deleteAtTime,
    this.description,
    this.kind,
    this.name,
    this.resourcePolicies,
    this.resourceStatus,
    this.satisfiesPzs,
    this.selfLink,
    this.selfLinkWithId,
    this.shareSettings,
    this.specificReservation,
    this.specificReservationRequired,
    this.status,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregateReservation': ?aggregateReservation?.toMap(),
      'commitment': ?commitment,
      'creationTimestamp': ?creationTimestamp,
      'deleteAfterDuration': ?deleteAfterDuration?.toMap(),
      'deleteAtTime': ?deleteAtTime,
      'description': ?description,
      'kind': ?kind,
      'name': ?name,
      'resourcePolicies': ?resourcePolicies,
      'resourceStatus': ?resourceStatus?.toMap(),
      'satisfiesPzs': ?satisfiesPzs,
      'selfLink': ?selfLink,
      'selfLinkWithId': ?selfLinkWithId,
      'shareSettings': ?shareSettings?.toMap(),
      'specificReservation': ?specificReservation?.toMap(),
      'specificReservationRequired': ?specificReservationRequired,
      'status': ?status,
      'zone': ?zone,
    };
  }

  factory GetReservationResult.fromMap(Map<String, dynamic> map) {
    return GetReservationResult(
      aggregateReservation: (() { final guardedValue = map['aggregateReservation']; if (guardedValue == null) return null; return AllocationAggregateReservationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      commitment: (() { final guardedValue = map['commitment']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deleteAfterDuration: (() { final guardedValue = map['deleteAfterDuration']; if (guardedValue == null) return null; return DurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      deleteAtTime: (() { final guardedValue = map['deleteAtTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourcePolicies: (() { final guardedValue = map['resourcePolicies']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      resourceStatus: (() { final guardedValue = map['resourceStatus']; if (guardedValue == null) return null; return AllocationResourceStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      satisfiesPzs: (() { final guardedValue = map['satisfiesPzs']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLinkWithId: (() { final guardedValue = map['selfLinkWithId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      shareSettings: (() { final guardedValue = map['shareSettings']; if (guardedValue == null) return null; return ShareSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      specificReservation: (() { final guardedValue = map['specificReservation']; if (guardedValue == null) return null; return AllocationSpecificSKUReservationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      specificReservationRequired: (() { final guardedValue = map['specificReservationRequired']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
