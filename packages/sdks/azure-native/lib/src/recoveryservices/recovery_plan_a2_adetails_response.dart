// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';

/// Recovery plan A2A specific details.
class RecoveryPlanA2ADetailsResponse {
  /// Gets the Instance type.
  /// Expected value is 'A2A'.
  final pulumi.Input<String> instanceType;
  /// The primary extended location.
  final pulumi.Input<ExtendedLocationResponse>? primaryExtendedLocation;
  /// The primary zone.
  final pulumi.Input<String>? primaryZone;
  /// The recovery extended location.
  final pulumi.Input<ExtendedLocationResponse>? recoveryExtendedLocation;
  /// The recovery zone.
  final pulumi.Input<String>? recoveryZone;

  /// Creates a new [RecoveryPlanA2ADetailsResponse].
  /// [instanceType] Gets the Instance type.
  /// [primaryExtendedLocation] The primary extended location.
  /// [primaryZone] The primary zone.
  /// [recoveryExtendedLocation] The recovery extended location.
  /// [recoveryZone] The recovery zone.
  RecoveryPlanA2ADetailsResponse({
    required this.instanceType,
    this.primaryExtendedLocation,
    this.primaryZone,
    this.recoveryExtendedLocation,
    this.recoveryZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceType': instanceType,
      'primaryExtendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocationResponse, Map<String, dynamic>>(primaryExtendedLocation, (value) => value.toMap()),
      'primaryZone': ?primaryZone,
      'recoveryExtendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocationResponse, Map<String, dynamic>>(recoveryExtendedLocation, (value) => value.toMap()),
      'recoveryZone': ?recoveryZone,
    };
  }

  factory RecoveryPlanA2ADetailsResponse.fromMap(Map<String, dynamic> map) {
    return RecoveryPlanA2ADetailsResponse(
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      primaryExtendedLocation: (() { final guardedValue = map['primaryExtendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      primaryZone: (() { final guardedValue = map['primaryZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryExtendedLocation: (() { final guardedValue = map['recoveryExtendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      recoveryZone: (() { final guardedValue = map['recoveryZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

