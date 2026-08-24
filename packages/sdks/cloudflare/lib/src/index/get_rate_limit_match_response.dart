// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRateLimitMatchResponse {
  /// When true, only the uncached traffic served from your origin servers will count towards rate limiting. In this case, any cached traffic served by Cloudflare will not count towards rate limiting. This field is optional.
  /// Notes: This field is deprecated. Instead, use response headers and set "origin*traffic" to "false" to avoid legacy behaviour interacting with the "response*headers" property.
  final pulumi.Input<bool> originTraffic;

  /// Creates a new [GetRateLimitMatchResponse].
  /// [originTraffic] When true, only the uncached traffic served from your origin servers will count towards rate limiting. In this case, any cached traffic served by Cloudflare will not count towards rate limiting. This field is optional.
  const GetRateLimitMatchResponse({
    required this.originTraffic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'originTraffic': originTraffic,
    };
  }

  factory GetRateLimitMatchResponse.fromMap(Map<String, dynamic> map) {
    return GetRateLimitMatchResponse(
      originTraffic: pulumi.Input.fromValue(map['originTraffic'] as bool),
    );
  }
}
