// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_rate_limit_options_enforce_on_key_compute_beta.dart';
import 'security_policy_rule_rate_limit_options_enforce_on_key_config_compute_beta.dart';
import 'security_policy_rule_rate_limit_options_threshold_compute_beta.dart';
import 'security_policy_rule_redirect_options_compute_beta.dart';

class SecurityPolicyRuleRateLimitOptionsComputeBeta {
  /// Can only be specified if the action for the rule is "rate_based_ban". If specified, determines the time (in seconds) the traffic will continue to be banned by the rate limit after the rate falls below the threshold.
  final pulumi.Input<int>? banDurationSec;
  /// Can only be specified if the action for the rule is "rate_based_ban". If specified, the key will be banned for the configured 'ban_duration_sec' when the number of requests that exceed the 'rate_limit_threshold' also exceed this 'ban_threshold'.
  final pulumi.Input<SecurityPolicyRuleRateLimitOptionsThresholdComputeBeta>? banThreshold;
  /// Action to take for requests that are under the configured rate limit threshold. Valid option is "allow" only.
  final pulumi.Input<String>? conformAction;
  /// Determines the key to enforce the rate_limit_threshold on. Possible values are: - ALL: A single rate limit threshold is applied to all the requests matching this rule. This is the default value if "enforceOnKey" is not configured. - IP: The source IP address of the request is the key. Each IP has this limit enforced separately. - HTTP_HEADER: The value of the HTTP header whose name is configured under "enforceOnKeyName". The key value is truncated to the first 128 bytes of the header value. If no such header is present in the request, the key type defaults to ALL. - XFF_IP: The first IP address (i.e. the originating client IP address) specified in the list of IPs under X-Forwarded-For HTTP header. If no such header is present or the value is not a valid IP, the key defaults to the source IP address of the request i.e. key type IP. - HTTP_COOKIE: The value of the HTTP cookie whose name is configured under "enforceOnKeyName". The key value is truncated to the first 128 bytes of the cookie value. If no such cookie is present in the request, the key type defaults to ALL. - HTTP_PATH: The URL path of the HTTP request. The key value is truncated to the first 128 bytes. - SNI: Server name indication in the TLS session of the HTTPS request. The key value is truncated to the first 128 bytes. The key type defaults to ALL on a HTTP session. - REGION_CODE: The country/region from which the request originates.
  final pulumi.Input<SecurityPolicyRuleRateLimitOptionsEnforceOnKeyComputeBeta>? enforceOnKey;
  /// If specified, any combination of values of enforce_on_key_type/enforce_on_key_name is treated as the key on which ratelimit threshold/action is enforced. You can specify up to 3 enforce_on_key_configs. If enforce_on_key_configs is specified, enforce_on_key must not be specified.
  final pulumi.Input<List<SecurityPolicyRuleRateLimitOptionsEnforceOnKeyConfigComputeBeta>>? enforceOnKeyConfigs;
  /// Rate limit key name applicable only for the following key types: HTTP_HEADER -- Name of the HTTP header whose value is taken as the key value. HTTP_COOKIE -- Name of the HTTP cookie whose value is taken as the key value.
  final pulumi.Input<String>? enforceOnKeyName;
  /// Action to take for requests that are above the configured rate limit threshold, to either deny with a specified HTTP response code, or redirect to a different endpoint. Valid options are `deny(STATUS)`, where valid values for `STATUS` are 403, 404, 429, and 502, and `redirect`, where the redirect parameters come from `exceedRedirectOptions` below. The `redirect` action is only supported in Global Security Policies of type CLOUD_ARMOR.
  final pulumi.Input<String>? exceedAction;
  /// Parameters defining the redirect action that is used as the exceed action. Cannot be specified if the exceed action is not redirect. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  final pulumi.Input<SecurityPolicyRuleRedirectOptionsComputeBeta>? exceedRedirectOptions;
  /// Threshold at which to begin ratelimiting.
  final pulumi.Input<SecurityPolicyRuleRateLimitOptionsThresholdComputeBeta>? rateLimitThreshold;

  /// Creates a new [SecurityPolicyRuleRateLimitOptionsComputeBeta].
  /// [banDurationSec] Can only be specified if the action for the rule is "rate_based_ban". If specified, determines the time (in seconds) the traffic will continue to be banned by the rate limit after the rate falls below the threshold.
  /// [banThreshold] Can only be specified if the action for the rule is "rate_based_ban". If specified, the key will be banned for the configured 'ban_duration_sec' when the number of requests that exceed the 'rate_limit_threshold' also exceed this 'ban_threshold'.
  /// [conformAction] Action to take for requests that are under the configured rate limit threshold. Valid option is "allow" only.
  /// [enforceOnKey] Determines the key to enforce the rate_limit_threshold on. Possible values are: - ALL: A single rate limit threshold is applied to all the requests matching this rule. This is the default value if "enforceOnKey" is not configured. - IP: The source IP address of the request is the key. Each IP has this limit enforced separately. - HTTP_HEADER: The value of the HTTP header whose name is configured under "enforceOnKeyName". The key value is truncated to the first 128 bytes of the header value. If no such header is present in the request, the key type defaults to ALL. - XFF_IP: The first IP address (i.e. the originating client IP address) specified in the list of IPs under X-Forwarded-For HTTP header. If no such header is present or the value is not a valid IP, the key defaults to the source IP address of the request i.e. key type IP. - HTTP_COOKIE: The value of the HTTP cookie whose name is configured under "enforceOnKeyName". The key value is truncated to the first 128 bytes of the cookie value. If no such cookie is present in the request, the key type defaults to ALL. - HTTP_PATH: The URL path of the HTTP request. The key value is truncated to the first 128 bytes. - SNI: Server name indication in the TLS session of the HTTPS request. The key value is truncated to the first 128 bytes. The key type defaults to ALL on a HTTP session. - REGION_CODE: The country/region from which the request originates.
  /// [enforceOnKeyConfigs] If specified, any combination of values of enforce_on_key_type/enforce_on_key_name is treated as the key on which ratelimit threshold/action is enforced. You can specify up to 3 enforce_on_key_configs. If enforce_on_key_configs is specified, enforce_on_key must not be specified.
  /// [enforceOnKeyName] Rate limit key name applicable only for the following key types: HTTP_HEADER -- Name of the HTTP header whose value is taken as the key value. HTTP_COOKIE -- Name of the HTTP cookie whose value is taken as the key value.
  /// [exceedAction] Action to take for requests that are above the configured rate limit threshold, to either deny with a specified HTTP response code, or redirect to a different endpoint. Valid options are `deny(STATUS)`, where valid values for `STATUS` are 403, 404, 429, and 502, and `redirect`, where the redirect parameters come from `exceedRedirectOptions` below. The `redirect` action is only supported in Global Security Policies of type CLOUD_ARMOR.
  /// [exceedRedirectOptions] Parameters defining the redirect action that is used as the exceed action. Cannot be specified if the exceed action is not redirect. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  /// [rateLimitThreshold] Threshold at which to begin ratelimiting.
  const SecurityPolicyRuleRateLimitOptionsComputeBeta({
    this.banDurationSec,
    this.banThreshold,
    this.conformAction,
    this.enforceOnKey,
    this.enforceOnKeyConfigs,
    this.enforceOnKeyName,
    this.exceedAction,
    this.exceedRedirectOptions,
    this.rateLimitThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'banDurationSec': ?banDurationSec,
      'banThreshold': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyRuleRateLimitOptionsThresholdComputeBeta, Map<String, dynamic>>(banThreshold, (value) => value.toMap()),
      'conformAction': ?conformAction,
      'enforceOnKey': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyRuleRateLimitOptionsEnforceOnKeyComputeBeta, String>(enforceOnKey, (value) => value.wireValue),
      'enforceOnKeyConfigs': ?pulumi.Input.mapOptionalInputValue<List<SecurityPolicyRuleRateLimitOptionsEnforceOnKeyConfigComputeBeta>, List<Map<String, dynamic>>>(enforceOnKeyConfigs, (value) => pulumi.Input.encodeList<SecurityPolicyRuleRateLimitOptionsEnforceOnKeyConfigComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enforceOnKeyName': ?enforceOnKeyName,
      'exceedAction': ?exceedAction,
      'exceedRedirectOptions': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyRuleRedirectOptionsComputeBeta, Map<String, dynamic>>(exceedRedirectOptions, (value) => value.toMap()),
      'rateLimitThreshold': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyRuleRateLimitOptionsThresholdComputeBeta, Map<String, dynamic>>(rateLimitThreshold, (value) => value.toMap()),
    };
  }

  factory SecurityPolicyRuleRateLimitOptionsComputeBeta.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleRateLimitOptionsComputeBeta(
      banDurationSec: (() { final guardedValue = map['banDurationSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      banThreshold: (() { final guardedValue = map['banThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityPolicyRuleRateLimitOptionsThresholdComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      conformAction: (() { final guardedValue = map['conformAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enforceOnKey: (() { final guardedValue = map['enforceOnKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityPolicyRuleRateLimitOptionsEnforceOnKeyComputeBeta.fromValue(guardedValue as String)); })(),
      enforceOnKeyConfigs: (() { final guardedValue = map['enforceOnKeyConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SecurityPolicyRuleRateLimitOptionsEnforceOnKeyConfigComputeBeta>(guardedValue, (value) => SecurityPolicyRuleRateLimitOptionsEnforceOnKeyConfigComputeBeta.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enforceOnKeyName: (() { final guardedValue = map['enforceOnKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exceedAction: (() { final guardedValue = map['exceedAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exceedRedirectOptions: (() { final guardedValue = map['exceedRedirectOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityPolicyRuleRedirectOptionsComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rateLimitThreshold: (() { final guardedValue = map['rateLimitThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityPolicyRuleRateLimitOptionsThresholdComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

