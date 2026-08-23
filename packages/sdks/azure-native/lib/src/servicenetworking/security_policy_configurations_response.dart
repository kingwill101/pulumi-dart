// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'waf_security_policy_response.dart';

/// SecurityPolicyConfigurations Subresource of Traffic Controller.
class SecurityPolicyConfigurationsResponse {
  /// Contains reference to a WAF-type security policy.
  final pulumi.Input<WafSecurityPolicyResponse>? wafSecurityPolicy;

  /// Creates a new [SecurityPolicyConfigurationsResponse].
  /// [wafSecurityPolicy] Contains reference to a WAF-type security policy.
  const SecurityPolicyConfigurationsResponse({
    this.wafSecurityPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'wafSecurityPolicy': ?pulumi.Input.mapOptionalInputValue<WafSecurityPolicyResponse, Map<String, dynamic>>(wafSecurityPolicy, (value) => value.toMap()),
    };
  }

  factory SecurityPolicyConfigurationsResponse.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyConfigurationsResponse(
      wafSecurityPolicy: (() { final guardedValue = map['wafSecurityPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WafSecurityPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
