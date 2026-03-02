// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';

/// ExtendedLocation details data.
class A2AExtendedLocationDetailsResponse {
  /// The primary ExtendedLocation.
  final pulumi.Input<ExtendedLocationResponse>? primaryExtendedLocation;
  /// The recovery ExtendedLocation.
  final pulumi.Input<ExtendedLocationResponse>? recoveryExtendedLocation;

  /// Creates a new [A2AExtendedLocationDetailsResponse].
  /// [primaryExtendedLocation] The primary ExtendedLocation.
  /// [recoveryExtendedLocation] The recovery ExtendedLocation.
  A2AExtendedLocationDetailsResponse({
    this.primaryExtendedLocation,
    this.recoveryExtendedLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryExtendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocationResponse, Map<String, dynamic>>(primaryExtendedLocation, (value) => value.toMap()),
      'recoveryExtendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocationResponse, Map<String, dynamic>>(recoveryExtendedLocation, (value) => value.toMap()),
    };
  }

  factory A2AExtendedLocationDetailsResponse.fromMap(Map<String, dynamic> map) {
    return A2AExtendedLocationDetailsResponse(
      primaryExtendedLocation: map['primaryExtendedLocation'] == null ? null : (ExtendedLocationResponse.fromMap((map['primaryExtendedLocation'] as Map).cast<String, dynamic>())).input(),
      recoveryExtendedLocation: map['recoveryExtendedLocation'] == null ? null : (ExtendedLocationResponse.fromMap((map['recoveryExtendedLocation'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

