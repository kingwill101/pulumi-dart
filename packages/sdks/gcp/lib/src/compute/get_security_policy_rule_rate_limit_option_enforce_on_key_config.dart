// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSecurityPolicyRuleRateLimitOptionEnforceOnKeyConfig {
  /// Rate limit key name applicable only for the following key types: HTTP_HEADER -- Name of the HTTP header whose value is taken as the key value. HTTP_COOKIE -- Name of the HTTP cookie whose value is taken as the key value.
  final pulumi.Input<String> enforceOnKeyName;
  /// Determines the key to enforce the rate_limit_threshold on
  final pulumi.Input<String> enforceOnKeyType;

  /// Creates a new [GetSecurityPolicyRuleRateLimitOptionEnforceOnKeyConfig].
  /// [enforceOnKeyName] Rate limit key name applicable only for the following key types: HTTP_HEADER -- Name of the HTTP header whose value is taken as the key value. HTTP_COOKIE -- Name of the HTTP cookie whose value is taken as the key value.
  /// [enforceOnKeyType] Determines the key to enforce the rate_limit_threshold on
  GetSecurityPolicyRuleRateLimitOptionEnforceOnKeyConfig({
    required this.enforceOnKeyName,
    required this.enforceOnKeyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enforceOnKeyName': enforceOnKeyName,
      'enforceOnKeyType': enforceOnKeyType,
    };
  }

  factory GetSecurityPolicyRuleRateLimitOptionEnforceOnKeyConfig.fromMap(Map<String, dynamic> map) {
    return GetSecurityPolicyRuleRateLimitOptionEnforceOnKeyConfig(
      enforceOnKeyName: pulumi.Input.fromValue(map['enforceOnKeyName'] as String),
      enforceOnKeyType: pulumi.Input.fromValue(map['enforceOnKeyType'] as String),
    );
  }
}

