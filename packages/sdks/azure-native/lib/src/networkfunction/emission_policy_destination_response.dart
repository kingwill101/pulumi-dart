// ignore_for_file: unused_element, unnecessary_cast


/// Emission policy destination properties.
class EmissionPolicyDestinationResponse {
  /// Emission destination type.
  final String? destinationType;

  /// Creates a new [EmissionPolicyDestinationResponse].
  /// [destinationType] Emission destination type.
  EmissionPolicyDestinationResponse({
    this.destinationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationType': ?destinationType,
    };
  }

  factory EmissionPolicyDestinationResponse.fromMap(Map<String, dynamic> map) {
    return EmissionPolicyDestinationResponse(
      destinationType: map['destinationType'] == null ? null : map['destinationType'] as String,
    );
  }
}

