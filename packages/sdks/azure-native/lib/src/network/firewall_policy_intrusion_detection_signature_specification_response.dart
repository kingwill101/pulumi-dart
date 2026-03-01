// ignore_for_file: unused_element, unnecessary_cast


/// Intrusion detection signatures specification states.
class FirewallPolicyIntrusionDetectionSignatureSpecificationResponse {
  /// Signature id.
  final String? id;
  /// The signature state.
  final String? mode;

  /// Creates a new [FirewallPolicyIntrusionDetectionSignatureSpecificationResponse].
  /// [id] Signature id.
  /// [mode] The signature state.
  FirewallPolicyIntrusionDetectionSignatureSpecificationResponse({
    this.id,
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'mode': ?mode,
    };
  }

  factory FirewallPolicyIntrusionDetectionSignatureSpecificationResponse.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyIntrusionDetectionSignatureSpecificationResponse(
      id: map['id'] == null ? null : map['id'] as String,
      mode: map['mode'] == null ? null : map['mode'] as String,
    );
  }
}

