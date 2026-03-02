// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';

/// ExtendedLocation details data.
class A2AFabricSpecificLocationDetailsResponse {
  /// The initial primary ExtendedLocation.
  final pulumi.Input<ExtendedLocationResponse>? initialPrimaryExtendedLocation;
  /// Initial primary fabric location info.
  final pulumi.Input<String>? initialPrimaryFabricLocation;
  /// The initial source zone info.
  final pulumi.Input<String>? initialPrimaryZone;
  /// The initial recovery ExtendedLocation.
  final pulumi.Input<ExtendedLocationResponse>? initialRecoveryExtendedLocation;
  /// The initial recovery fabric location info.
  final pulumi.Input<String>? initialRecoveryFabricLocation;
  /// The initial target zone info.
  final pulumi.Input<String>? initialRecoveryZone;
  /// The primary ExtendedLocation.
  final pulumi.Input<ExtendedLocationResponse>? primaryExtendedLocation;
  /// Primary fabric location info.
  final pulumi.Input<String>? primaryFabricLocation;
  /// Source zone info.
  final pulumi.Input<String>? primaryZone;
  /// The recovery ExtendedLocation.
  final pulumi.Input<ExtendedLocationResponse>? recoveryExtendedLocation;
  /// The recovery fabric location info.
  final pulumi.Input<String>? recoveryFabricLocation;
  /// The target zone info.
  final pulumi.Input<String>? recoveryZone;

  /// Creates a new [A2AFabricSpecificLocationDetailsResponse].
  /// [initialPrimaryExtendedLocation] The initial primary ExtendedLocation.
  /// [initialPrimaryFabricLocation] Initial primary fabric location info.
  /// [initialPrimaryZone] The initial source zone info.
  /// [initialRecoveryExtendedLocation] The initial recovery ExtendedLocation.
  /// [initialRecoveryFabricLocation] The initial recovery fabric location info.
  /// [initialRecoveryZone] The initial target zone info.
  /// [primaryExtendedLocation] The primary ExtendedLocation.
  /// [primaryFabricLocation] Primary fabric location info.
  /// [primaryZone] Source zone info.
  /// [recoveryExtendedLocation] The recovery ExtendedLocation.
  /// [recoveryFabricLocation] The recovery fabric location info.
  /// [recoveryZone] The target zone info.
  A2AFabricSpecificLocationDetailsResponse({
    this.initialPrimaryExtendedLocation,
    this.initialPrimaryFabricLocation,
    this.initialPrimaryZone,
    this.initialRecoveryExtendedLocation,
    this.initialRecoveryFabricLocation,
    this.initialRecoveryZone,
    this.primaryExtendedLocation,
    this.primaryFabricLocation,
    this.primaryZone,
    this.recoveryExtendedLocation,
    this.recoveryFabricLocation,
    this.recoveryZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'initialPrimaryExtendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocationResponse, Map<String, dynamic>>(initialPrimaryExtendedLocation, (value) => value.toMap()),
      'initialPrimaryFabricLocation': ?initialPrimaryFabricLocation,
      'initialPrimaryZone': ?initialPrimaryZone,
      'initialRecoveryExtendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocationResponse, Map<String, dynamic>>(initialRecoveryExtendedLocation, (value) => value.toMap()),
      'initialRecoveryFabricLocation': ?initialRecoveryFabricLocation,
      'initialRecoveryZone': ?initialRecoveryZone,
      'primaryExtendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocationResponse, Map<String, dynamic>>(primaryExtendedLocation, (value) => value.toMap()),
      'primaryFabricLocation': ?primaryFabricLocation,
      'primaryZone': ?primaryZone,
      'recoveryExtendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocationResponse, Map<String, dynamic>>(recoveryExtendedLocation, (value) => value.toMap()),
      'recoveryFabricLocation': ?recoveryFabricLocation,
      'recoveryZone': ?recoveryZone,
    };
  }

  factory A2AFabricSpecificLocationDetailsResponse.fromMap(Map<String, dynamic> map) {
    return A2AFabricSpecificLocationDetailsResponse(
      initialPrimaryExtendedLocation: map['initialPrimaryExtendedLocation'] == null ? null : (ExtendedLocationResponse.fromMap((map['initialPrimaryExtendedLocation'] as Map).cast<String, dynamic>())).input(),
      initialPrimaryFabricLocation: map['initialPrimaryFabricLocation'] == null ? null : (map['initialPrimaryFabricLocation'] as String).input(),
      initialPrimaryZone: map['initialPrimaryZone'] == null ? null : (map['initialPrimaryZone'] as String).input(),
      initialRecoveryExtendedLocation: map['initialRecoveryExtendedLocation'] == null ? null : (ExtendedLocationResponse.fromMap((map['initialRecoveryExtendedLocation'] as Map).cast<String, dynamic>())).input(),
      initialRecoveryFabricLocation: map['initialRecoveryFabricLocation'] == null ? null : (map['initialRecoveryFabricLocation'] as String).input(),
      initialRecoveryZone: map['initialRecoveryZone'] == null ? null : (map['initialRecoveryZone'] as String).input(),
      primaryExtendedLocation: map['primaryExtendedLocation'] == null ? null : (ExtendedLocationResponse.fromMap((map['primaryExtendedLocation'] as Map).cast<String, dynamic>())).input(),
      primaryFabricLocation: map['primaryFabricLocation'] == null ? null : (map['primaryFabricLocation'] as String).input(),
      primaryZone: map['primaryZone'] == null ? null : (map['primaryZone'] as String).input(),
      recoveryExtendedLocation: map['recoveryExtendedLocation'] == null ? null : (ExtendedLocationResponse.fromMap((map['recoveryExtendedLocation'] as Map).cast<String, dynamic>())).input(),
      recoveryFabricLocation: map['recoveryFabricLocation'] == null ? null : (map['recoveryFabricLocation'] as String).input(),
      recoveryZone: map['recoveryZone'] == null ? null : (map['recoveryZone'] as String).input(),
    );
  }
}

