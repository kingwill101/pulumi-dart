// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'r2_bucket_cors_rule_allowed.dart';

class R2BucketCorsRule {
  /// Object specifying allowed origins, methods and headers for this CORS rule.
  final pulumi.Input<R2BucketCorsRuleAllowed> allowed;
  /// Specifies the headers that can be exposed back, and accessed by, the JavaScript making the cross-origin request. If you need to access headers beyond the safelisted response headers, such as Content-Encoding or cf-cache-status, you must specify it here.
  final pulumi.Input<List<String>?>? exposeHeaders;
  /// Identifier for this rule.
  final pulumi.Input<String?>? id;
  /// Specifies the amount of time (in seconds) browsers are allowed to cache CORS preflight responses. Browsers may limit this to 2 hours or less, even if the maximum value (86400) is specified.
  final pulumi.Input<double?>? maxAgeSeconds;

  /// Creates a new [R2BucketCorsRule].
  /// [allowed] Object specifying allowed origins, methods and headers for this CORS rule.
  /// [exposeHeaders] Specifies the headers that can be exposed back, and accessed by, the JavaScript making the cross-origin request. If you need to access headers beyond the safelisted response headers, such as Content-Encoding or cf-cache-status, you must specify it here.
  /// [id] Identifier for this rule.
  /// [maxAgeSeconds] Specifies the amount of time (in seconds) browsers are allowed to cache CORS preflight responses. Browsers may limit this to 2 hours or less, even if the maximum value (86400) is specified.
  const R2BucketCorsRule({
    required this.allowed,
    this.exposeHeaders,
    this.id,
    this.maxAgeSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowed': pulumi.Input.mapInputValue<R2BucketCorsRuleAllowed, Map<String, dynamic>>(allowed, (value) => value.toMap()),
      'exposeHeaders': ?exposeHeaders,
      'id': ?id,
      'maxAgeSeconds': ?maxAgeSeconds,
    };
  }

  factory R2BucketCorsRule.fromMap(Map<String, dynamic> map) {
    return R2BucketCorsRule(
      allowed: pulumi.Input.fromValue(R2BucketCorsRuleAllowed.fromMap((map['allowed']! as Map).cast<String, dynamic>())),
      exposeHeaders: (() { final guardedValue = map['exposeHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxAgeSeconds: (() { final guardedValue = map['maxAgeSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
