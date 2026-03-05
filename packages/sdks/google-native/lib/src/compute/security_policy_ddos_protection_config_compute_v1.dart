// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_ddos_protection_config_ddos_protection_compute_v1.dart';

class SecurityPolicyDdosProtectionConfigComputeV1 {
  final pulumi.Input<SecurityPolicyDdosProtectionConfigDdosProtectionComputeV1>? ddosProtection;

  /// Creates a new [SecurityPolicyDdosProtectionConfigComputeV1].
  /// [ddosProtection] Optional.
  SecurityPolicyDdosProtectionConfigComputeV1({
    this.ddosProtection,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ddosProtection': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyDdosProtectionConfigDdosProtectionComputeV1, String>(ddosProtection, (value) => value.wireValue),
    };
  }

  factory SecurityPolicyDdosProtectionConfigComputeV1.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyDdosProtectionConfigComputeV1(
      ddosProtection: (() { final guardedValue = map['ddosProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityPolicyDdosProtectionConfigDdosProtectionComputeV1.fromValue(guardedValue as String)); })(),
    );
  }
}

