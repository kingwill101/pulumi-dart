// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';

/// ExtendedLocation details data.
class A2AFabricSpecificLocationDetailsResponse {
  /// The initial primary ExtendedLocation.
  final pulumi.Input<ExtendedLocationResponse?>? initialPrimaryExtendedLocation;
  /// Initial primary fabric location info.
  final pulumi.Input<String?>? initialPrimaryFabricLocation;
  /// The initial source zone info.
  final pulumi.Input<String?>? initialPrimaryZone;
  /// The initial recovery ExtendedLocation.
  final pulumi.Input<ExtendedLocationResponse?>? initialRecoveryExtendedLocation;
  /// The initial recovery fabric location info.
  final pulumi.Input<String?>? initialRecoveryFabricLocation;
  /// The initial target zone info.
  final pulumi.Input<String?>? initialRecoveryZone;
  /// The primary ExtendedLocation.
  final pulumi.Input<ExtendedLocationResponse?>? primaryExtendedLocation;
  /// Primary fabric location info.
  final pulumi.Input<String?>? primaryFabricLocation;
  /// Source zone info.
  final pulumi.Input<String?>? primaryZone;
  /// The recovery ExtendedLocation.
  final pulumi.Input<ExtendedLocationResponse?>? recoveryExtendedLocation;
  /// The recovery fabric location info.
  final pulumi.Input<String?>? recoveryFabricLocation;
  /// The target zone info.
  final pulumi.Input<String?>? recoveryZone;

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
  const A2AFabricSpecificLocationDetailsResponse({
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
      initialPrimaryExtendedLocation: (() { final guardedValue = map['initialPrimaryExtendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      initialPrimaryFabricLocation: (() { final guardedValue = map['initialPrimaryFabricLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      initialPrimaryZone: (() { final guardedValue = map['initialPrimaryZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      initialRecoveryExtendedLocation: (() { final guardedValue = map['initialRecoveryExtendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      initialRecoveryFabricLocation: (() { final guardedValue = map['initialRecoveryFabricLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      initialRecoveryZone: (() { final guardedValue = map['initialRecoveryZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryExtendedLocation: (() { final guardedValue = map['primaryExtendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      primaryFabricLocation: (() { final guardedValue = map['primaryFabricLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryZone: (() { final guardedValue = map['primaryZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryExtendedLocation: (() { final guardedValue = map['recoveryExtendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      recoveryFabricLocation: (() { final guardedValue = map['recoveryFabricLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryZone: (() { final guardedValue = map['recoveryZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
