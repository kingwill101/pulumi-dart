// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityPolicyDdosProtectionConfigResponseComputeV1 {
  final pulumi.Input<String> ddosProtection;

  /// Creates a new [SecurityPolicyDdosProtectionConfigResponseComputeV1].
  /// [ddosProtection] Required.
  const SecurityPolicyDdosProtectionConfigResponseComputeV1({
    required this.ddosProtection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ddosProtection': ddosProtection,
    };
  }

  factory SecurityPolicyDdosProtectionConfigResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyDdosProtectionConfigResponseComputeV1(
      ddosProtection: pulumi.Input.fromValue(map['ddosProtection'] as String),
    );
  }
}

