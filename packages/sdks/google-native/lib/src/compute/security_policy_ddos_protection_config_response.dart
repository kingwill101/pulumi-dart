// ignore_for_file: unused_element, unnecessary_cast


class SecurityPolicyDdosProtectionConfigResponse {
  final String ddosProtection;

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
      ddosProtection: map['ddosProtection'] as String,
    );
  }
}

