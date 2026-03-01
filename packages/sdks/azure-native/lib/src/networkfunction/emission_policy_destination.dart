// ignore_for_file: unused_element, unnecessary_cast


/// Emission policy destination properties.
class EmissionPolicyDestination {
  /// Emission destination type.
  final String? destinationType;

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
      destinationType: map['destinationType'] == null ? null : map['destinationType'] as String,
    );
  }
}

