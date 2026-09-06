// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';

/// Recovery plan A2A input.
class RecoveryPlanA2AInput {
  /// Gets the Instance type.
  /// Expected value is 'A2A'.
  final pulumi.Input<String> instanceType;
  /// The primary extended location.
  final pulumi.Input<ExtendedLocation?>? primaryExtendedLocation;
  /// The primary zone.
  final pulumi.Input<String?>? primaryZone;
  /// The recovery extended location.
  final pulumi.Input<ExtendedLocation?>? recoveryExtendedLocation;
  /// The recovery zone.
  final pulumi.Input<String?>? recoveryZone;

  /// Creates a new [RecoveryPlanA2AInput].
  /// [instanceType] Gets the Instance type.
  /// [primaryExtendedLocation] The primary extended location.
  /// [primaryZone] The primary zone.
  /// [recoveryExtendedLocation] The recovery extended location.
  /// [recoveryZone] The recovery zone.
  const RecoveryPlanA2AInput({
    required this.instanceType,
    this.primaryExtendedLocation,
    this.primaryZone,
    this.recoveryExtendedLocation,
    this.recoveryZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceType': instanceType,
      'primaryExtendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(primaryExtendedLocation, (value) => value.toMap()),
      'primaryZone': ?primaryZone,
      'recoveryExtendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(recoveryExtendedLocation, (value) => value.toMap()),
      'recoveryZone': ?recoveryZone,
    };
  }

  factory RecoveryPlanA2AInput.fromMap(Map<String, dynamic> map) {
    return RecoveryPlanA2AInput(
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      primaryExtendedLocation: (() { final guardedValue = map['primaryExtendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      primaryZone: (() { final guardedValue = map['primaryZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryExtendedLocation: (() { final guardedValue = map['recoveryExtendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      recoveryZone: (() { final guardedValue = map['recoveryZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
