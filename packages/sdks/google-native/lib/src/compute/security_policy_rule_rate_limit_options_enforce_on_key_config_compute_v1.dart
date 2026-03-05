// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_rate_limit_options_enforce_on_key_config_enforce_on_key_type_compute_v1.dart';

class SecurityPolicyRuleRateLimitOptionsEnforceOnKeyConfigComputeV1 {
  /// Rate limit key name applicable only for the following key types: HTTP_HEADER -- Name of the HTTP header whose value is taken as the key value. HTTP_COOKIE -- Name of the HTTP cookie whose value is taken as the key value.
  final pulumi.Input<String>? enforceOnKeyName;
  /// Determines the key to enforce the rate_limit_threshold on. Possible values are: - ALL: A single rate limit threshold is applied to all the requests matching this rule. This is the default value if "enforceOnKeyConfigs" is not configured. - IP: The source IP address of the request is the key. Each IP has this limit enforced separately. - HTTP_HEADER: The value of the HTTP header whose name is configured under "enforceOnKeyName". The key value is truncated to the first 128 bytes of the header value. If no such header is present in the request, the key type defaults to ALL. - XFF_IP: The first IP address (i.e. the originating client IP address) specified in the list of IPs under X-Forwarded-For HTTP header. If no such header is present or the value is not a valid IP, the key defaults to the source IP address of the request i.e. key type IP. - HTTP_COOKIE: The value of the HTTP cookie whose name is configured under "enforceOnKeyName". The key value is truncated to the first 128 bytes of the cookie value. If no such cookie is present in the request, the key type defaults to ALL. - HTTP_PATH: The URL path of the HTTP request. The key value is truncated to the first 128 bytes. - SNI: Server name indication in the TLS session of the HTTPS request. The key value is truncated to the first 128 bytes. The key type defaults to ALL on a HTTP session. - REGION_CODE: The country/region from which the request originates.
  final pulumi.Input<SecurityPolicyRuleRateLimitOptionsEnforceOnKeyConfigEnforceOnKeyTypeComputeV1>? enforceOnKeyType;

  /// Creates a new [SecurityPolicyRuleRateLimitOptionsEnforceOnKeyConfigComputeV1].
  /// [enforceOnKeyName] Rate limit key name applicable only for the following key types: HTTP_HEADER -- Name of the HTTP header whose value is taken as the key value. HTTP_COOKIE -- Name of the HTTP cookie whose value is taken as the key value.
  /// [enforceOnKeyType] Determines the key to enforce the rate_limit_threshold on. Possible values are: - ALL: A single rate limit threshold is applied to all the requests matching this rule. This is the default value if "enforceOnKeyConfigs" is not configured. - IP: The source IP address of the request is the key. Each IP has this limit enforced separately. - HTTP_HEADER: The value of the HTTP header whose name is configured under "enforceOnKeyName". The key value is truncated to the first 128 bytes of the header value. If no such header is present in the request, the key type defaults to ALL. - XFF_IP: The first IP address (i.e. the originating client IP address) specified in the list of IPs under X-Forwarded-For HTTP header. If no such header is present or the value is not a valid IP, the key defaults to the source IP address of the request i.e. key type IP. - HTTP_COOKIE: The value of the HTTP cookie whose name is configured under "enforceOnKeyName". The key value is truncated to the first 128 bytes of the cookie value. If no such cookie is present in the request, the key type defaults to ALL. - HTTP_PATH: The URL path of the HTTP request. The key value is truncated to the first 128 bytes. - SNI: Server name indication in the TLS session of the HTTPS request. The key value is truncated to the first 128 bytes. The key type defaults to ALL on a HTTP session. - REGION_CODE: The country/region from which the request originates.
  SecurityPolicyRuleRateLimitOptionsEnforceOnKeyConfigComputeV1({
    this.enforceOnKeyName,
    this.enforceOnKeyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enforceOnKeyName': ?enforceOnKeyName,
      'enforceOnKeyType': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyRuleRateLimitOptionsEnforceOnKeyConfigEnforceOnKeyTypeComputeV1, String>(enforceOnKeyType, (value) => value.wireValue),
    };
  }

  factory SecurityPolicyRuleRateLimitOptionsEnforceOnKeyConfigComputeV1.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleRateLimitOptionsEnforceOnKeyConfigComputeV1(
      enforceOnKeyName: (() { final guardedValue = map['enforceOnKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enforceOnKeyType: (() { final guardedValue = map['enforceOnKeyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityPolicyRuleRateLimitOptionsEnforceOnKeyConfigEnforceOnKeyTypeComputeV1.fromValue(guardedValue as String)); })(),
    );
  }
}

