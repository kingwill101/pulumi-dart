// ignore_for_file: unused_element, unnecessary_cast

import 'extended_location_response.dart';

/// ExtendedLocation details data.
class A2AFabricSpecificLocationDetailsResponse {
  /// The initial primary ExtendedLocation.
  final ExtendedLocationResponse? initialPrimaryExtendedLocation;
  /// Initial primary fabric location info.
  final String? initialPrimaryFabricLocation;
  /// The initial source zone info.
  final String? initialPrimaryZone;
  /// The initial recovery ExtendedLocation.
  final ExtendedLocationResponse? initialRecoveryExtendedLocation;
  /// The initial recovery fabric location info.
  final String? initialRecoveryFabricLocation;
  /// The initial target zone info.
  final String? initialRecoveryZone;
  /// The primary ExtendedLocation.
  final ExtendedLocationResponse? primaryExtendedLocation;
  /// Primary fabric location info.
  final String? primaryFabricLocation;
  /// Source zone info.
  final String? primaryZone;
  /// The recovery ExtendedLocation.
  final ExtendedLocationResponse? recoveryExtendedLocation;
  /// The recovery fabric location info.
  final String? recoveryFabricLocation;
  /// The target zone info.
  final String? recoveryZone;

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
      'initialPrimaryExtendedLocation': ?initialPrimaryExtendedLocation == null ? null : initialPrimaryExtendedLocation!.toMap(),
      'initialPrimaryFabricLocation': ?initialPrimaryFabricLocation,
      'initialPrimaryZone': ?initialPrimaryZone,
      'initialRecoveryExtendedLocation': ?initialRecoveryExtendedLocation == null ? null : initialRecoveryExtendedLocation!.toMap(),
      'initialRecoveryFabricLocation': ?initialRecoveryFabricLocation,
      'initialRecoveryZone': ?initialRecoveryZone,
      'primaryExtendedLocation': ?primaryExtendedLocation == null ? null : primaryExtendedLocation!.toMap(),
      'primaryFabricLocation': ?primaryFabricLocation,
      'primaryZone': ?primaryZone,
      'recoveryExtendedLocation': ?recoveryExtendedLocation == null ? null : recoveryExtendedLocation!.toMap(),
      'recoveryFabricLocation': ?recoveryFabricLocation,
      'recoveryZone': ?recoveryZone,
    };
  }

  factory A2AFabricSpecificLocationDetailsResponse.fromMap(Map<String, dynamic> map) {
    return A2AFabricSpecificLocationDetailsResponse(
      initialPrimaryExtendedLocation: map['initialPrimaryExtendedLocation'] == null ? null : ExtendedLocationResponse.fromMap((map['initialPrimaryExtendedLocation'] as Map).cast<String, dynamic>()),
      initialPrimaryFabricLocation: map['initialPrimaryFabricLocation'] == null ? null : map['initialPrimaryFabricLocation'] as String,
      initialPrimaryZone: map['initialPrimaryZone'] == null ? null : map['initialPrimaryZone'] as String,
      initialRecoveryExtendedLocation: map['initialRecoveryExtendedLocation'] == null ? null : ExtendedLocationResponse.fromMap((map['initialRecoveryExtendedLocation'] as Map).cast<String, dynamic>()),
      initialRecoveryFabricLocation: map['initialRecoveryFabricLocation'] == null ? null : map['initialRecoveryFabricLocation'] as String,
      initialRecoveryZone: map['initialRecoveryZone'] == null ? null : map['initialRecoveryZone'] as String,
      primaryExtendedLocation: map['primaryExtendedLocation'] == null ? null : ExtendedLocationResponse.fromMap((map['primaryExtendedLocation'] as Map).cast<String, dynamic>()),
      primaryFabricLocation: map['primaryFabricLocation'] == null ? null : map['primaryFabricLocation'] as String,
      primaryZone: map['primaryZone'] == null ? null : map['primaryZone'] as String,
      recoveryExtendedLocation: map['recoveryExtendedLocation'] == null ? null : ExtendedLocationResponse.fromMap((map['recoveryExtendedLocation'] as Map).cast<String, dynamic>()),
      recoveryFabricLocation: map['recoveryFabricLocation'] == null ? null : map['recoveryFabricLocation'] as String,
      recoveryZone: map['recoveryZone'] == null ? null : map['recoveryZone'] as String,
    );
  }
}

