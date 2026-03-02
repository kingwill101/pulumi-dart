// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_ddos_protection_config_ddos_protection.dart';

class SecurityPolicyDdosProtectionConfig {
  final pulumi.Input<SecurityPolicyDdosProtectionConfigDdosProtection>? ddosProtection;

  /// Creates a new [SecurityPolicyDdosProtectionConfig].
  /// [ddosProtection] Optional.
  SecurityPolicyDdosProtectionConfig({
    this.ddosProtection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ddosProtection': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyDdosProtectionConfigDdosProtection, String>(ddosProtection, (value) => value.value),
    };
  }

  factory SecurityPolicyDdosProtectionConfig.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyDdosProtectionConfig(
      ddosProtection: map['ddosProtection'] == null ? null : (SecurityPolicyDdosProtectionConfigDdosProtection.fromValue(map['ddosProtection'] as String)).input(),
    );
  }
}

