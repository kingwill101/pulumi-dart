// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_r2_bucket_cors_rule_allowed.dart';

class GetR2BucketCorsRule {
  /// Object specifying allowed origins, methods and headers for this CORS rule.
  final pulumi.Input<GetR2BucketCorsRuleAllowed> allowed;
  /// Specifies the headers that can be exposed back, and accessed by, the JavaScript making the cross-origin request. If you need to access headers beyond the safelisted response headers, such as Content-Encoding or cf-cache-status, you must specify it here.
  final pulumi.Input<List<String>> exposeHeaders;
  /// Identifier for this rule.
  final pulumi.Input<String> id;
  /// Specifies the amount of time (in seconds) browsers are allowed to cache CORS preflight responses. Browsers may limit this to 2 hours or less, even if the maximum value (86400) is specified.
  final pulumi.Input<double> maxAgeSeconds;

  /// Creates a new [GetR2BucketCorsRule].
  /// [allowed] Object specifying allowed origins, methods and headers for this CORS rule.
  /// [exposeHeaders] Specifies the headers that can be exposed back, and accessed by, the JavaScript making the cross-origin request. If you need to access headers beyond the safelisted response headers, such as Content-Encoding or cf-cache-status, you must specify it here.
  /// [id] Identifier for this rule.
  /// [maxAgeSeconds] Specifies the amount of time (in seconds) browsers are allowed to cache CORS preflight responses. Browsers may limit this to 2 hours or less, even if the maximum value (86400) is specified.
  const GetR2BucketCorsRule({
    required this.allowed,
    required this.exposeHeaders,
    required this.id,
    required this.maxAgeSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowed': pulumi.Input.mapInputValue<GetR2BucketCorsRuleAllowed, Map<String, dynamic>>(allowed, (value) => value.toMap()),
      'exposeHeaders': exposeHeaders,
      'id': id,
      'maxAgeSeconds': maxAgeSeconds,
    };
  }

  factory GetR2BucketCorsRule.fromMap(Map<String, dynamic> map) {
    return GetR2BucketCorsRule(
      allowed: pulumi.Input.fromValue(GetR2BucketCorsRuleAllowed.fromMap((map['allowed']! as Map).cast<String, dynamic>())),
      exposeHeaders: pulumi.Input.fromValue((map['exposeHeaders'] as List).cast<String>()),
      id: pulumi.Input.fromValue(map['id'] as String),
      maxAgeSeconds: pulumi.Input.fromValue((map['maxAgeSeconds'] as num).toDouble()),
    );
  }
}
