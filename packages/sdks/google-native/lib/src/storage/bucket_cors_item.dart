// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketCorsItem {
  /// The value, in seconds, to return in the  Access-Control-Max-Age header used in preflight responses.
  final pulumi.Input<int>? maxAgeSeconds;
  /// The list of HTTP methods on which to include CORS response headers, (GET, OPTIONS, POST, etc) Note: "*" is permitted in the list of methods, and means "any method".
  final pulumi.Input<List<String>>? method;
  /// The list of Origins eligible to receive CORS response headers. Note: "*" is permitted in the list of origins, and means "any Origin".
  final pulumi.Input<List<String>>? origin;
  /// The list of HTTP headers other than the simple response headers to give permission for the user-agent to share across domains.
  final pulumi.Input<List<String>>? responseHeader;

  /// Creates a new [BucketCorsItem].
  /// [maxAgeSeconds] The value, in seconds, to return in the  Access-Control-Max-Age header used in preflight responses.
  /// [method] The list of HTTP methods on which to include CORS response headers, (GET, OPTIONS, POST, etc) Note: "*" is permitted in the list of methods, and means "any method".
  /// [origin] The list of Origins eligible to receive CORS response headers. Note: "*" is permitted in the list of origins, and means "any Origin".
  /// [responseHeader] The list of HTTP headers other than the simple response headers to give permission for the user-agent to share across domains.
  BucketCorsItem({
    this.maxAgeSeconds,
    this.method,
    this.origin,
    this.responseHeader,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxAgeSeconds': ?maxAgeSeconds,
      'method': ?method,
      'origin': ?origin,
      'responseHeader': ?responseHeader,
    };
  }

  factory BucketCorsItem.fromMap(Map<String, dynamic> map) {
    return BucketCorsItem(
      maxAgeSeconds: map['maxAgeSeconds'] == null ? null : (map['maxAgeSeconds'] as int).input(),
      method: map['method'] == null ? null : ((map['method'] as List).cast<String>()).input(),
      origin: map['origin'] == null ? null : ((map['origin'] as List).cast<String>()).input(),
      responseHeader: map['responseHeader'] == null ? null : ((map['responseHeader'] as List).cast<String>()).input(),
    );
  }
}

