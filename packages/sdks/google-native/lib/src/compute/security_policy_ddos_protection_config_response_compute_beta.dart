// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityPolicyDdosProtectionConfigResponseComputeBeta {
  final pulumi.Input<String> ddosProtection;

  /// Creates a new [SecurityPolicyDdosProtectionConfigResponseComputeBeta].
  /// [ddosProtection] Required.
  const SecurityPolicyDdosProtectionConfigResponseComputeBeta({
    required this.ddosProtection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ddosProtection': ddosProtection,
    };
  }

  factory SecurityPolicyDdosProtectionConfigResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyDdosProtectionConfigResponseComputeBeta(
      ddosProtection: pulumi.Input.fromValue(map['ddosProtection'] as String),
    );
  }
}
