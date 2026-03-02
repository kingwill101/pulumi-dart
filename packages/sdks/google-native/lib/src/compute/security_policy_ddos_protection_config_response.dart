// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityPolicyDdosProtectionConfigResponse {
  final pulumi.Input<String> ddosProtection;

  /// Creates a new [SecurityPolicyDdosProtectionConfigResponse].
  /// [ddosProtection] Required.
  SecurityPolicyDdosProtectionConfigResponse({
    required this.ddosProtection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ddosProtection': ddosProtection,
    };
  }

  factory SecurityPolicyDdosProtectionConfigResponse.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyDdosProtectionConfigResponse(
      ddosProtection: (map['ddosProtection'] as String).input(),
    );
  }
}

