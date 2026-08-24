// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRateLimitMatchRequest {
  /// The HTTP methods to match. You can specify a subset (for example, `['POST','PUT']`) or all methods (`['_ALL_']`). This field is optional when creating a rate limit.
  final pulumi.Input<List<String>> methods;
  /// The HTTP schemes to match. You can specify one scheme (`['HTTPS']`), both schemes (`['HTTP','HTTPS']`), or all schemes (`['_ALL_']`). This field is optional.
  final pulumi.Input<List<String>> schemes;
  /// The URL pattern to match, composed of a host and a path such as `example.org/path*`. Normalization is applied before the pattern is matched. `*` wildcards are expanded to match applicable traffic. Query strings are not matched. Set the value to `*` to match all traffic to your zone.
  final pulumi.Input<String> url;

  /// Creates a new [GetRateLimitMatchRequest].
  /// [methods] The HTTP methods to match. You can specify a subset (for example, `['POST','PUT']`) or all methods (`['_ALL_']`). This field is optional when creating a rate limit.
  /// [schemes] The HTTP schemes to match. You can specify one scheme (`['HTTPS']`), both schemes (`['HTTP','HTTPS']`), or all schemes (`['_ALL_']`). This field is optional.
  /// [url] The URL pattern to match, composed of a host and a path such as `example.org/path*`. Normalization is applied before the pattern is matched. `*` wildcards are expanded to match applicable traffic. Query strings are not matched. Set the value to `*` to match all traffic to your zone.
  const GetRateLimitMatchRequest({
    required this.methods,
    required this.schemes,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'methods': methods,
      'schemes': schemes,
      'url': url,
    };
  }

  factory GetRateLimitMatchRequest.fromMap(Map<String, dynamic> map) {
    return GetRateLimitMatchRequest(
      methods: pulumi.Input.fromValue((map['methods'] as List).cast<String>()),
      schemes: pulumi.Input.fromValue((map['schemes'] as List).cast<String>()),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
