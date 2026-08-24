// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RateLimitMatchResponse {
  /// When true, only the uncached traffic served from your origin servers will count towards rate limiting. In this case, any cached traffic served by Cloudflare will not count towards rate limiting. This field is optional.
  /// Notes: This field is deprecated. Instead, use response headers and set "origin*traffic" to "false" to avoid legacy behaviour interacting with the "response*headers" property.
  final pulumi.Input<bool?>? originTraffic;

  /// Creates a new [RateLimitMatchResponse].
  /// [originTraffic] When true, only the uncached traffic served from your origin servers will count towards rate limiting. In this case, any cached traffic served by Cloudflare will not count towards rate limiting. This field is optional.
  const RateLimitMatchResponse({
    this.originTraffic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'originTraffic': ?originTraffic,
    };
  }

  factory RateLimitMatchResponse.fromMap(Map<String, dynamic> map) {
    return RateLimitMatchResponse(
      originTraffic: (() { final guardedValue = map['originTraffic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
