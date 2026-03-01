// ignore_for_file: unused_element, unnecessary_cast


/// Intrusion detection signatures specification states.
class FirewallPolicyIntrusionDetectionSignatureSpecification {
  /// Signature id.
  final String? id;
  /// The signature state.
  final String? mode;

  /// Creates a new [FirewallPolicyIntrusionDetectionSignatureSpecification].
  /// [id] Signature id.
  /// [mode] The signature state.
  FirewallPolicyIntrusionDetectionSignatureSpecification({
    this.id,
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'mode': ?mode,
    };
  }

  factory FirewallPolicyIntrusionDetectionSignatureSpecification.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyIntrusionDetectionSignatureSpecification(
      id: map['id'] == null ? null : map['id'] as String,
      mode: map['mode'] == null ? null : map['mode'] as String,
    );
  }
}

