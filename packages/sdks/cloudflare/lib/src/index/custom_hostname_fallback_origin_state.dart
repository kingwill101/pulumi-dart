// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CustomHostnameFallbackOrigin resources.
class CustomHostnameFallbackOriginState {
  /// This is the time the fallback origin was created.
  final pulumi.Input<String?>? createdAt;
  /// These are errors that were encountered while trying to activate a fallback origin.
  final pulumi.Input<List<String>?>? errors;
  /// Your origin hostname that requests to your custom hostnames will be sent to.
  final pulumi.Input<String?>? origin;
  /// Status of the fallback origin's activation.
  /// Available values: "initializing", "pending*deployment", "pending*deletion", "active", "deployment*timed*out", "deletion*timed*out".
  final pulumi.Input<String?>? status;
  /// This is the time the fallback origin was updated.
  final pulumi.Input<String?>? updatedAt;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [CustomHostnameFallbackOriginState].
  /// [createdAt] This is the time the fallback origin was created.
  /// [errors] These are errors that were encountered while trying to activate a fallback origin.
  /// [origin] Your origin hostname that requests to your custom hostnames will be sent to.
  /// [status] Status of the fallback origin's activation.
  /// [updatedAt] This is the time the fallback origin was updated.
  /// [zoneId] Identifier.
  const CustomHostnameFallbackOriginState({
    this.createdAt,
    this.errors,
    this.origin,
    this.status,
    this.updatedAt,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'errors': ?errors,
      'origin': ?origin,
      'status': ?status,
      'updatedAt': ?updatedAt,
      'zoneId': ?zoneId,
    };
  }

  factory CustomHostnameFallbackOriginState.fromMap(Map<String, dynamic> map) {
    return CustomHostnameFallbackOriginState(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      origin: (() { final guardedValue = map['origin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
