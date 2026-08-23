// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Emission policy destination properties.
class EmissionPolicyDestinationResponse {
  /// Emission destination type.
  final pulumi.Input<String>? destinationType;

  /// Creates a new [EmissionPolicyDestinationResponse].
  /// [destinationType] Emission destination type.
  const EmissionPolicyDestinationResponse({
    this.destinationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationType': ?destinationType,
    };
  }

  factory EmissionPolicyDestinationResponse.fromMap(Map<String, dynamic> map) {
    return EmissionPolicyDestinationResponse(
      destinationType: (() { final guardedValue = map['destinationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
