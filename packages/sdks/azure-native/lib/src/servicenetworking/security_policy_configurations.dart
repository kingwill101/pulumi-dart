// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'waf_security_policy.dart';

/// SecurityPolicyConfigurations Subresource of Traffic Controller.
class SecurityPolicyConfigurations {
  /// Contains reference to a WAF-type security policy.
  final pulumi.Input<WafSecurityPolicy>? wafSecurityPolicy;

  /// Creates a new [SecurityPolicyConfigurations].
  /// [wafSecurityPolicy] Contains reference to a WAF-type security policy.
  const SecurityPolicyConfigurations({
    this.wafSecurityPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'wafSecurityPolicy': ?pulumi.Input.mapOptionalInputValue<WafSecurityPolicy, Map<String, dynamic>>(wafSecurityPolicy, (value) => value.toMap()),
    };
  }

  factory SecurityPolicyConfigurations.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyConfigurations(
      wafSecurityPolicy: (() { final guardedValue = map['wafSecurityPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WafSecurityPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
