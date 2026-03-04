// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_rate_limit_options_enforce_on_key_config_response.dart';
import 'security_policy_rule_rate_limit_options_rpc_status_response.dart';
import 'security_policy_rule_rate_limit_options_threshold_response.dart';
import 'security_policy_rule_redirect_options_response.dart';

class SecurityPolicyRuleRateLimitOptionsResponse {
  /// Can only be specified if the action for the rule is "rate_based_ban". If specified, determines the time (in seconds) the traffic will continue to be banned by the rate limit after the rate falls below the threshold.
  final pulumi.Input<int> banDurationSec;

  /// Can only be specified if the action for the rule is "rate_based_ban". If specified, the key will be banned for the configured 'ban_duration_sec' when the number of requests that exceed the 'rate_limit_threshold' also exceed this 'ban_threshold'.
  final pulumi.Input<SecurityPolicyRuleRateLimitOptionsThresholdResponse>
  banThreshold;

  /// Action to take for requests that are under the configured rate limit threshold. Valid option is "allow" only.
  final pulumi.Input<String> conformAction;

  /// Determines the key to enforce the rate_limit_threshold on. Possible values are: - ALL: A single rate limit threshold is applied to all the requests matching this rule. This is the default value if "enforceOnKey" is not configured. - IP: The source IP address of the request is the key. Each IP has this limit enforced separately. - HTTP_HEADER: The value of the HTTP header whose name is configured under "enforceOnKeyName". The key value is truncated to the first 128 bytes of the header value. If no such header is present in the request, the key type defaults to ALL. - XFF_IP: The first IP address (i.e. the originating client IP address) specified in the list of IPs under X-Forwarded-For HTTP header. If no such header is present or the value is not a valid IP, the key defaults to the source IP address of the request i.e. key type IP. - HTTP_COOKIE: The value of the HTTP cookie whose name is configured under "enforceOnKeyName". The key value is truncated to the first 128 bytes of the cookie value. If no such cookie is present in the request, the key type defaults to ALL. - HTTP_PATH: The URL path of the HTTP request. The key value is truncated to the first 128 bytes. - SNI: Server name indication in the TLS session of the HTTPS request. The key value is truncated to the first 128 bytes. The key type defaults to ALL on a HTTP session. - REGION_CODE: The country/region from which the request originates.
  final pulumi.Input<String> enforceOnKey;

  /// If specified, any combination of values of enforce_on_key_type/enforce_on_key_name is treated as the key on which ratelimit threshold/action is enforced. You can specify up to 3 enforce_on_key_configs. If enforce_on_key_configs is specified, enforce_on_key must not be specified.
  final pulumi.Input<
    List<SecurityPolicyRuleRateLimitOptionsEnforceOnKeyConfigResponse>
  >
  enforceOnKeyConfigs;

  /// Rate limit key name applicable only for the following key types: HTTP_HEADER -- Name of the HTTP header whose value is taken as the key value. HTTP_COOKIE -- Name of the HTTP cookie whose value is taken as the key value.
  final pulumi.Input<String> enforceOnKeyName;

  /// Action to take for requests that are above the configured rate limit threshold, to either deny with a specified HTTP response code, or redirect to a different endpoint. Valid options are `deny(STATUS)`, where valid values for `STATUS` are 403, 404, 429, and 502, and `redirect`, where the redirect parameters come from `exceedRedirectOptions` below. The `redirect` action is only supported in Global Security Policies of type CLOUD_ARMOR.
  final pulumi.Input<String> exceedAction;

  /// Specified gRPC response status for proxyless gRPC requests that are above the configured rate limit threshold
  final pulumi.Input<SecurityPolicyRuleRateLimitOptionsRpcStatusResponse>
  exceedActionRpcStatus;

  /// Parameters defining the redirect action that is used as the exceed action. Cannot be specified if the exceed action is not redirect. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  final pulumi.Input<SecurityPolicyRuleRedirectOptionsResponse>
  exceedRedirectOptions;

  /// Threshold at which to begin ratelimiting.
  final pulumi.Input<SecurityPolicyRuleRateLimitOptionsThresholdResponse>
  rateLimitThreshold;

  /// Creates a new [SecurityPolicyRuleRateLimitOptionsResponse].
  /// [banDurationSec] Can only be specified if the action for the rule is "rate_based_ban". If specified, determines the time (in seconds) the traffic will continue to be banned by the rate limit after the rate falls below the threshold.
  /// [banThreshold] Can only be specified if the action for the rule is "rate_based_ban". If specified, the key will be banned for the configured 'ban_duration_sec' when the number of requests that exceed the 'rate_limit_threshold' also exceed this 'ban_threshold'.
  /// [conformAction] Action to take for requests that are under the configured rate limit threshold. Valid option is "allow" only.
  /// [enforceOnKey] Determines the key to enforce the rate_limit_threshold on. Possible values are: - ALL: A single rate limit threshold is applied to all the requests matching this rule. This is the default value if "enforceOnKey" is not configured. - IP: The source IP address of the request is the key. Each IP has this limit enforced separately. - HTTP_HEADER: The value of the HTTP header whose name is configured under "enforceOnKeyName". The key value is truncated to the first 128 bytes of the header value. If no such header is present in the request, the key type defaults to ALL. - XFF_IP: The first IP address (i.e. the originating client IP address) specified in the list of IPs under X-Forwarded-For HTTP header. If no such header is present or the value is not a valid IP, the key defaults to the source IP address of the request i.e. key type IP. - HTTP_COOKIE: The value of the HTTP cookie whose name is configured under "enforceOnKeyName". The key value is truncated to the first 128 bytes of the cookie value. If no such cookie is present in the request, the key type defaults to ALL. - HTTP_PATH: The URL path of the HTTP request. The key value is truncated to the first 128 bytes. - SNI: Server name indication in the TLS session of the HTTPS request. The key value is truncated to the first 128 bytes. The key type defaults to ALL on a HTTP session. - REGION_CODE: The country/region from which the request originates.
  /// [enforceOnKeyConfigs] If specified, any combination of values of enforce_on_key_type/enforce_on_key_name is treated as the key on which ratelimit threshold/action is enforced. You can specify up to 3 enforce_on_key_configs. If enforce_on_key_configs is specified, enforce_on_key must not be specified.
  /// [enforceOnKeyName] Rate limit key name applicable only for the following key types: HTTP_HEADER -- Name of the HTTP header whose value is taken as the key value. HTTP_COOKIE -- Name of the HTTP cookie whose value is taken as the key value.
  /// [exceedAction] Action to take for requests that are above the configured rate limit threshold, to either deny with a specified HTTP response code, or redirect to a different endpoint. Valid options are `deny(STATUS)`, where valid values for `STATUS` are 403, 404, 429, and 502, and `redirect`, where the redirect parameters come from `exceedRedirectOptions` below. The `redirect` action is only supported in Global Security Policies of type CLOUD_ARMOR.
  /// [exceedActionRpcStatus] Specified gRPC response status for proxyless gRPC requests that are above the configured rate limit threshold
  /// [exceedRedirectOptions] Parameters defining the redirect action that is used as the exceed action. Cannot be specified if the exceed action is not redirect. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  /// [rateLimitThreshold] Threshold at which to begin ratelimiting.
  SecurityPolicyRuleRateLimitOptionsResponse({
    required this.banDurationSec,
    required this.banThreshold,
    required this.conformAction,
    required this.enforceOnKey,
    required this.enforceOnKeyConfigs,
    required this.enforceOnKeyName,
    required this.exceedAction,
    required this.exceedActionRpcStatus,
    required this.exceedRedirectOptions,
    required this.rateLimitThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'banDurationSec': banDurationSec,
      'banThreshold':
          pulumi.Input.mapInputValue<
            SecurityPolicyRuleRateLimitOptionsThresholdResponse,
            Map<String, dynamic>
          >(banThreshold, (value) => value.toMap()),
      'conformAction': conformAction,
      'enforceOnKey': enforceOnKey,
      'enforceOnKeyConfigs':
          pulumi.Input.mapInputValue<
            List<SecurityPolicyRuleRateLimitOptionsEnforceOnKeyConfigResponse>,
            List<Map<String, dynamic>>
          >(
            enforceOnKeyConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  SecurityPolicyRuleRateLimitOptionsEnforceOnKeyConfigResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'enforceOnKeyName': enforceOnKeyName,
      'exceedAction': exceedAction,
      'exceedActionRpcStatus':
          pulumi.Input.mapInputValue<
            SecurityPolicyRuleRateLimitOptionsRpcStatusResponse,
            Map<String, dynamic>
          >(exceedActionRpcStatus, (value) => value.toMap()),
      'exceedRedirectOptions':
          pulumi.Input.mapInputValue<
            SecurityPolicyRuleRedirectOptionsResponse,
            Map<String, dynamic>
          >(exceedRedirectOptions, (value) => value.toMap()),
      'rateLimitThreshold':
          pulumi.Input.mapInputValue<
            SecurityPolicyRuleRateLimitOptionsThresholdResponse,
            Map<String, dynamic>
          >(rateLimitThreshold, (value) => value.toMap()),
    };
  }

  factory SecurityPolicyRuleRateLimitOptionsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecurityPolicyRuleRateLimitOptionsResponse(
      banDurationSec: pulumi.Input.fromValue(map['banDurationSec'] as int),
      banThreshold: pulumi.Input.fromValue(
        SecurityPolicyRuleRateLimitOptionsThresholdResponse.fromMap(
          (map['banThreshold']! as Map).cast<String, dynamic>(),
        ),
      ),
      conformAction: pulumi.Input.fromValue(map['conformAction'] as String),
      enforceOnKey: pulumi.Input.fromValue(map['enforceOnKey'] as String),
      enforceOnKeyConfigs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          SecurityPolicyRuleRateLimitOptionsEnforceOnKeyConfigResponse
        >(
          map['enforceOnKeyConfigs']!,
          (value) =>
              SecurityPolicyRuleRateLimitOptionsEnforceOnKeyConfigResponse.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      enforceOnKeyName: pulumi.Input.fromValue(
        map['enforceOnKeyName'] as String,
      ),
      exceedAction: pulumi.Input.fromValue(map['exceedAction'] as String),
      exceedActionRpcStatus: pulumi.Input.fromValue(
        SecurityPolicyRuleRateLimitOptionsRpcStatusResponse.fromMap(
          (map['exceedActionRpcStatus']! as Map).cast<String, dynamic>(),
        ),
      ),
      exceedRedirectOptions: pulumi.Input.fromValue(
        SecurityPolicyRuleRedirectOptionsResponse.fromMap(
          (map['exceedRedirectOptions']! as Map).cast<String, dynamic>(),
        ),
      ),
      rateLimitThreshold: pulumi.Input.fromValue(
        SecurityPolicyRuleRateLimitOptionsThresholdResponse.fromMap(
          (map['rateLimitThreshold']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
