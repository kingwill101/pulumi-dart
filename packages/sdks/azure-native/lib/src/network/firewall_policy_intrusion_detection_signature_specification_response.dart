// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Intrusion detection signatures specification states.
class FirewallPolicyIntrusionDetectionSignatureSpecificationResponse {
  /// Signature id.
  final pulumi.Input<String>? id;

  /// The signature state.
  final pulumi.Input<String>? mode;

  /// Creates a new [FirewallPolicyIntrusionDetectionSignatureSpecificationResponse].
  /// [id] Signature id.
  /// [mode] The signature state.
  FirewallPolicyIntrusionDetectionSignatureSpecificationResponse({
    this.id,
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': ?id, 'mode': ?mode};
  }

  factory FirewallPolicyIntrusionDetectionSignatureSpecificationResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return FirewallPolicyIntrusionDetectionSignatureSpecificationResponse(
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mode: (() {
        final guardedValue = map['mode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
