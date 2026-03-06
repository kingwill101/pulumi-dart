// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allocation_resource_status_response_compute_v1.dart';
import 'allocation_specific_skureservation_response_compute_v1.dart';
import 'share_settings_response_compute_v1.dart';

/// Represents a reservation resource. A reservation ensures that capacity is held in a specific zone even if the reserved VMs are not running. For more information, read Reserving zonal resources.
class ReservationResponseComputeV1 {
  /// Full or partial URL to a parent commitment. This field displays for reservations that are tied to a commitment.
  final pulumi.Input<String> commitment;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String> creationTimestamp;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String> description;
  /// Type of the resource. Always compute#reservations for reservations.
  final pulumi.Input<String> kind;
  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String> name;
  /// Resource policies to be added to this reservation. The key is defined by user, and the value is resource policy url. This is to define placement policy with reservation.
  final pulumi.Input<Map<String, String>> resourcePolicies;
  /// Status information for Reservation resource.
  final pulumi.Input<AllocationResourceStatusResponseComputeV1> resourceStatus;
  /// Reserved for future use.
  final pulumi.Input<bool> satisfiesPzs;
  /// Server-defined fully-qualified URL for this resource.
  final pulumi.Input<String> selfLink;
  /// Specify share-settings to create a shared reservation. This property is optional. For more information about the syntax and options for this field and its subfields, see the guide for creating a shared reservation.
  final pulumi.Input<ShareSettingsResponseComputeV1> shareSettings;
  /// Reservation for instances with specific machine shapes.
  final pulumi.Input<AllocationSpecificSKUReservationResponseComputeV1> specificReservation;
  /// Indicates whether the reservation can be consumed by VMs with affinity for "any" reservation. If the field is set, then only VMs that target the reservation by name can consume from this reservation.
  final pulumi.Input<bool> specificReservationRequired;
  /// The status of the reservation.
  final pulumi.Input<String> status;
  /// Zone in which the reservation resides. A zone must be provided if the reservation is created within a commitment.
  final pulumi.Input<String> zone;

  /// Creates a new [ReservationResponseComputeV1].
  /// [commitment] Full or partial URL to a parent commitment. This field displays for reservations that are tied to a commitment.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
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
  const ReservationResponseComputeV1({
    required this.commitment,
    required this.creationTimestamp,
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
      'commitment': commitment,
      'creationTimestamp': creationTimestamp,
      'description': description,
      'kind': kind,
      'name': name,
      'resourcePolicies': resourcePolicies,
      'resourceStatus': pulumi.Input.mapInputValue<AllocationResourceStatusResponseComputeV1, Map<String, dynamic>>(resourceStatus, (value) => value.toMap()),
      'satisfiesPzs': satisfiesPzs,
      'selfLink': selfLink,
      'shareSettings': pulumi.Input.mapInputValue<ShareSettingsResponseComputeV1, Map<String, dynamic>>(shareSettings, (value) => value.toMap()),
      'specificReservation': pulumi.Input.mapInputValue<AllocationSpecificSKUReservationResponseComputeV1, Map<String, dynamic>>(specificReservation, (value) => value.toMap()),
      'specificReservationRequired': specificReservationRequired,
      'status': status,
      'zone': zone,
    };
  }

  factory ReservationResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return ReservationResponseComputeV1(
      commitment: pulumi.Input.fromValue(map['commitment'] as String),
      creationTimestamp: pulumi.Input.fromValue(map['creationTimestamp'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourcePolicies: pulumi.Input.fromValue((map['resourcePolicies'] as Map).cast<String, String>()),
      resourceStatus: pulumi.Input.fromValue(AllocationResourceStatusResponseComputeV1.fromMap((map['resourceStatus']! as Map).cast<String, dynamic>())),
      satisfiesPzs: pulumi.Input.fromValue(map['satisfiesPzs'] as bool),
      selfLink: pulumi.Input.fromValue(map['selfLink'] as String),
      shareSettings: pulumi.Input.fromValue(ShareSettingsResponseComputeV1.fromMap((map['shareSettings']! as Map).cast<String, dynamic>())),
      specificReservation: pulumi.Input.fromValue(AllocationSpecificSKUReservationResponseComputeV1.fromMap((map['specificReservation']! as Map).cast<String, dynamic>())),
      specificReservationRequired: pulumi.Input.fromValue(map['specificReservationRequired'] as bool),
      status: pulumi.Input.fromValue(map['status'] as String),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}

