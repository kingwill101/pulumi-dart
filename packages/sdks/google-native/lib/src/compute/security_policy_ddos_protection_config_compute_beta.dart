// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_ddos_protection_config_ddos_protection_compute_beta.dart';

class SecurityPolicyDdosProtectionConfigComputeBeta {
  final pulumi.Input<SecurityPolicyDdosProtectionConfigDdosProtectionComputeBeta>? ddosProtection;

  /// Creates a new [SecurityPolicyDdosProtectionConfigComputeBeta].
  /// [ddosProtection] Optional.
  SecurityPolicyDdosProtectionConfigComputeBeta({
    this.ddosProtection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ddosProtection': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyDdosProtectionConfigDdosProtectionComputeBeta, String>(ddosProtection, (value) => value.value),
    };
  }

  factory SecurityPolicyDdosProtectionConfigComputeBeta.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyDdosProtectionConfigComputeBeta(
      ddosProtection: map['ddosProtection'] == null ? null : (SecurityPolicyDdosProtectionConfigDdosProtectionComputeBeta.fromValue(map['ddosProtection']! as String)).input(),
    );
  }
}

