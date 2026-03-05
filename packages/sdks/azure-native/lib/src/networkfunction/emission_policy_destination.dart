// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Emission policy destination properties.
class EmissionPolicyDestination {
  /// Emission destination type.
  final pulumi.Input<String>? destinationType;

  /// Creates a new [EmissionPolicyDestination].
  /// [destinationType] Emission destination type.
  EmissionPolicyDestination({
    this.destinationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationType': ?destinationType,
    };
  }

  factory EmissionPolicyDestination.fromMap(Map<String, dynamic> map) {
    return EmissionPolicyDestination(
      destinationType: (() { final guardedValue = map['destinationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

