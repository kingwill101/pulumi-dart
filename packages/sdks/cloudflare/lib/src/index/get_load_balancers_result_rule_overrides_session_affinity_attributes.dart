// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancersResultRuleOverridesSessionAffinityAttributes {
  /// Configures the drain duration in seconds. This field is only used when session affinity is enabled on the load balancer.
  final pulumi.Input<double> drainDuration;
  /// Configures the names of HTTP headers to base session affinity on when header `sessionAffinity` is enabled. At least one HTTP header name must be provided. To specify the exact cookies to be used, include an item in the following format: `"cookie:&lt;cookie-name-1&gt;,&lt;cookie-name-2&gt;"` (example) where everything after the colon is a comma-separated list of cookie names. Providing only `"cookie"` will result in all cookies being used. The default max number of HTTP header names that can be provided depends on your plan: 5 for Enterprise, 1 for all other plans.
  final pulumi.Input<List<String>> headers;
  /// When header `sessionAffinity` is enabled, this option can be used to specify how HTTP headers on load balancing requests will be used. The supported values are: - `"true"`: Load balancing requests must contain *all* of the HTTP headers specified by the `headers` session affinity attribute, otherwise sessions aren't created. - `"false"`: Load balancing requests must contain *at least one* of the HTTP headers specified by the `headers` session affinity attribute, otherwise sessions aren't created.
  final pulumi.Input<bool> requireAllHeaders;
  /// Configures the SameSite attribute on session affinity cookie. Value "Auto" will be translated to "Lax" or "None" depending if Always Use HTTPS is enabled. Note: when using value "None", the secure attribute can not be set to "Never".
  /// Available values: "Auto", "Lax", "None", "Strict".
  final pulumi.Input<String> samesite;
  /// Configures the Secure attribute on session affinity cookie. Value "Always" indicates the Secure attribute will be set in the Set-Cookie header, "Never" indicates the Secure attribute will not be set, and "Auto" will set the Secure attribute depending if Always Use HTTPS is enabled.
  /// Available values: "Auto", "Always", "Never".
  final pulumi.Input<String> secure;
  /// Configures the zero-downtime failover between origins within a pool when session affinity is enabled. This feature is currently incompatible with Argo, Tiered Cache, and Bandwidth Alliance. The supported values are: - `"none"`: No failover takes place for sessions pinned to the origin (default). - `"temporary"`: Traffic will be sent to another other healthy origin until the originally pinned origin is available; note that this can potentially result in heavy origin flapping. - `"sticky"`: The session affinity cookie is updated and subsequent requests are sent to the new origin. Note: Zero-downtime failover with sticky sessions is currently not supported for session affinity by header.
  /// Available values: "none", "temporary", "sticky".
  final pulumi.Input<String> zeroDowntimeFailover;

  /// Creates a new [GetLoadBalancersResultRuleOverridesSessionAffinityAttributes].
  /// [drainDuration] Configures the drain duration in seconds. This field is only used when session affinity is enabled on the load balancer.
  /// [headers] Configures the names of HTTP headers to base session affinity on when header `sessionAffinity` is enabled. At least one HTTP header name must be provided. To specify the exact cookies to be used, include an item in the following format: `"cookie:&lt;cookie-name-1&gt;,&lt;cookie-name-2&gt;"` (example) where everything after the colon is a comma-separated list of cookie names. Providing only `"cookie"` will result in all cookies being used. The default max number of HTTP header names that can be provided depends on your plan: 5 for Enterprise, 1 for all other plans.
  /// [requireAllHeaders] When header `sessionAffinity` is enabled, this option can be used to specify how HTTP headers on load balancing requests will be used. The supported values are: - `"true"`: Load balancing requests must contain *all* of the HTTP headers specified by the `headers` session affinity attribute, otherwise sessions aren't created. - `"false"`: Load balancing requests must contain *at least one* of the HTTP headers specified by the `headers` session affinity attribute, otherwise sessions aren't created.
  /// [samesite] Configures the SameSite attribute on session affinity cookie. Value "Auto" will be translated to "Lax" or "None" depending if Always Use HTTPS is enabled. Note: when using value "None", the secure attribute can not be set to "Never".
  /// [secure] Configures the Secure attribute on session affinity cookie. Value "Always" indicates the Secure attribute will be set in the Set-Cookie header, "Never" indicates the Secure attribute will not be set, and "Auto" will set the Secure attribute depending if Always Use HTTPS is enabled.
  /// [zeroDowntimeFailover] Configures the zero-downtime failover between origins within a pool when session affinity is enabled. This feature is currently incompatible with Argo, Tiered Cache, and Bandwidth Alliance. The supported values are: - `"none"`: No failover takes place for sessions pinned to the origin (default). - `"temporary"`: Traffic will be sent to another other healthy origin until the originally pinned origin is available; note that this can potentially result in heavy origin flapping. - `"sticky"`: The session affinity cookie is updated and subsequent requests are sent to the new origin. Note: Zero-downtime failover with sticky sessions is currently not supported for session affinity by header.
  const GetLoadBalancersResultRuleOverridesSessionAffinityAttributes({
    required this.drainDuration,
    required this.headers,
    required this.requireAllHeaders,
    required this.samesite,
    required this.secure,
    required this.zeroDowntimeFailover,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'drainDuration': drainDuration,
      'headers': headers,
      'requireAllHeaders': requireAllHeaders,
      'samesite': samesite,
      'secure': secure,
      'zeroDowntimeFailover': zeroDowntimeFailover,
    };
  }

  factory GetLoadBalancersResultRuleOverridesSessionAffinityAttributes.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersResultRuleOverridesSessionAffinityAttributes(
      drainDuration: pulumi.Input.fromValue((map['drainDuration'] as num).toDouble()),
      headers: pulumi.Input.fromValue((map['headers'] as List).cast<String>()),
      requireAllHeaders: pulumi.Input.fromValue(map['requireAllHeaders'] as bool),
      samesite: pulumi.Input.fromValue(map['samesite'] as String),
      secure: pulumi.Input.fromValue(map['secure'] as String),
      zeroDowntimeFailover: pulumi.Input.fromValue(map['zeroDowntimeFailover'] as String),
    );
  }
}
