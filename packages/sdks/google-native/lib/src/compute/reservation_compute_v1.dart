// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allocation_specific_skureservation_compute_v1.dart';
import 'share_settings_compute_v1.dart';

/// Represents a reservation resource. A reservation ensures that capacity is held in a specific zone even if the reserved VMs are not running. For more information, read Reserving zonal resources.
class ReservationComputeV1 {
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// Resource policies to be added to this reservation. The key is defined by user, and the value is resource policy url. This is to define placement policy with reservation.
  final pulumi.Input<Map<String, String>>? resourcePolicies;
  /// Specify share-settings to create a shared reservation. This property is optional. For more information about the syntax and options for this field and its subfields, see the guide for creating a shared reservation.
  final pulumi.Input<ShareSettingsComputeV1>? shareSettings;
  /// Reservation for instances with specific machine shapes.
  final pulumi.Input<AllocationSpecificSKUReservationComputeV1>? specificReservation;
  /// Indicates whether the reservation can be consumed by VMs with affinity for "any" reservation. If the field is set, then only VMs that target the reservation by name can consume from this reservation.
  final pulumi.Input<bool>? specificReservationRequired;
  /// Zone in which the reservation resides. A zone must be provided if the reservation is created within a commitment.
  final pulumi.Input<String>? zone;

  /// Creates a new [ReservationComputeV1].
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [name] The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [resourcePolicies] Resource policies to be added to this reservation. The key is defined by user, and the value is resource policy url. This is to define placement policy with reservation.
  /// [shareSettings] Specify share-settings to create a shared reservation. This property is optional. For more information about the syntax and options for this field and its subfields, see the guide for creating a shared reservation.
  /// [specificReservation] Reservation for instances with specific machine shapes.
  /// [specificReservationRequired] Indicates whether the reservation can be consumed by VMs with affinity for "any" reservation. If the field is set, then only VMs that target the reservation by name can consume from this reservation.
  /// [zone] Zone in which the reservation resides. A zone must be provided if the reservation is created within a commitment.
  ReservationComputeV1({
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
      'description': ?description,
      'name': ?name,
      'resourcePolicies': ?resourcePolicies,
      'shareSettings': ?pulumi.Input.mapOptionalInputValue<ShareSettingsComputeV1, Map<String, dynamic>>(shareSettings, (value) => value.toMap()),
      'specificReservation': ?pulumi.Input.mapOptionalInputValue<AllocationSpecificSKUReservationComputeV1, Map<String, dynamic>>(specificReservation, (value) => value.toMap()),
      'specificReservationRequired': ?specificReservationRequired,
      'zone': ?zone,
    };
  }

  factory ReservationComputeV1.fromMap(Map<String, dynamic> map) {
    return ReservationComputeV1(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourcePolicies: map['resourcePolicies'] == null ? null : ((map['resourcePolicies']! as Map).cast<String, String>()).input(),
      shareSettings: map['shareSettings'] == null ? null : (ShareSettingsComputeV1.fromMap((map['shareSettings']! as Map).cast<String, dynamic>())).input(),
      specificReservation: map['specificReservation'] == null ? null : (AllocationSpecificSKUReservationComputeV1.fromMap((map['specificReservation']! as Map).cast<String, dynamic>())).input(),
      specificReservationRequired: map['specificReservationRequired'] == null ? null : (map['specificReservationRequired']! as bool).input(),
      zone: map['zone'] == null ? null : (map['zone']! as String).input(),
    );
  }
}

