// ignore_for_file: unused_element, unnecessary_cast

import 'security_policy_ddos_protection_config_ddos_protection_compute_beta.dart';

class SecurityPolicyDdosProtectionConfigComputeBeta {
  final SecurityPolicyDdosProtectionConfigDdosProtectionComputeBeta? ddosProtection;

  /// Creates a new [SecurityPolicyDdosProtectionConfigComputeBeta].
  /// [ddosProtection] Optional.
  SecurityPolicyDdosProtectionConfigComputeBeta({
    this.ddosProtection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ddosProtection': ?ddosProtection == null ? null : ddosProtection!.value,
    };
  }

  factory SecurityPolicyDdosProtectionConfigComputeBeta.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyDdosProtectionConfigComputeBeta(
      ddosProtection: map['ddosProtection'] == null ? null : SecurityPolicyDdosProtectionConfigDdosProtectionComputeBeta.fromValue(map['ddosProtection'] as String),
    );
  }
}

