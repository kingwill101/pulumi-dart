// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'urlmap_path_matcher_default_custom_error_response_policy_error_response_rule.dart';

class URLMapPathMatcherDefaultCustomErrorResponsePolicy {
  /// Specifies rules for returning error responses.
  /// In a given policy, if you specify rules for both a range of error codes as well as rules for specific error codes then rules with specific error codes have a higher priority.
  /// For example, assume that you configure a rule for 401 (Un-authorized) code, and another for all 4 series error codes (4XX).
  /// If the backend service returns a 401, then the rule for 401 will be applied. However if the backend service returns a 403, the rule for 4xx takes effect.
  /// Structure is documented below.
  final pulumi.Input<List<URLMapPathMatcherDefaultCustomErrorResponsePolicyErrorResponseRule>>? errorResponseRules;
  /// The full or partial URL to the BackendBucket resource that contains the custom error content. Examples are:
  /// https://www.googleapis.com/compute/v1/projects/project/global/backendBuckets/myBackendBucket
  /// compute/v1/projects/project/global/backendBuckets/myBackendBucket
  /// global/backendBuckets/myBackendBucket
  /// If errorService is not specified at lower levels like pathMatcher, pathRule and routeRule, an errorService specified at a higher level in the UrlMap will be used. If UrlMap.defaultCustomErrorResponsePolicy contains one or more errorResponseRules[], it must specify errorService.
  /// If load balancer cannot reach the backendBucket, a simple Not Found Error will be returned, with the original response code (or overrideResponseCode if configured).
  final pulumi.Input<String>? errorService;

  /// Creates a new [URLMapPathMatcherDefaultCustomErrorResponsePolicy].
  /// [errorResponseRules] Specifies rules for returning error responses.
  /// [errorService] The full or partial URL to the BackendBucket resource that contains the custom error content. Examples are:
  URLMapPathMatcherDefaultCustomErrorResponsePolicy({
    this.errorResponseRules,
    this.errorService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorResponseRules': ?pulumi.Input.mapOptionalInputValue<List<URLMapPathMatcherDefaultCustomErrorResponsePolicyErrorResponseRule>, List<Map<String, dynamic>>>(errorResponseRules, (value) => pulumi.Input.encodeList<URLMapPathMatcherDefaultCustomErrorResponsePolicyErrorResponseRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'errorService': ?errorService,
    };
  }

  factory URLMapPathMatcherDefaultCustomErrorResponsePolicy.fromMap(Map<String, dynamic> map) {
    return URLMapPathMatcherDefaultCustomErrorResponsePolicy(
      errorResponseRules: map['errorResponseRules'] == null ? null : (pulumi.Input.decodeList<URLMapPathMatcherDefaultCustomErrorResponsePolicyErrorResponseRule>(map['errorResponseRules'], (value) => URLMapPathMatcherDefaultCustomErrorResponsePolicyErrorResponseRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      errorService: map['errorService'] == null ? null : (map['errorService'] as String).input(),
    );
  }
}

