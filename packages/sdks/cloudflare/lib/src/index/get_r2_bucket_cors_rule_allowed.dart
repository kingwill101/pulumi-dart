// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetR2BucketCorsRuleAllowed {
  /// Specifies the value for the Access-Control-Allow-Headers header R2 sets when requesting objects in this bucket from a browser. Cross-origin requests that include custom headers (e.g. x-user-id) should specify these headers as AllowedHeaders.
  final pulumi.Input<List<String>> headers;
  /// Specifies the value for the Access-Control-Allow-Methods header R2 sets when requesting objects in a bucket from a browser.
  final pulumi.Input<List<String>> methods;
  /// Specifies the value for the Access-Control-Allow-Origin header R2 sets when requesting objects in a bucket from a browser.
  final pulumi.Input<List<String>> origins;

  /// Creates a new [GetR2BucketCorsRuleAllowed].
  /// [headers] Specifies the value for the Access-Control-Allow-Headers header R2 sets when requesting objects in this bucket from a browser. Cross-origin requests that include custom headers (e.g. x-user-id) should specify these headers as AllowedHeaders.
  /// [methods] Specifies the value for the Access-Control-Allow-Methods header R2 sets when requesting objects in a bucket from a browser.
  /// [origins] Specifies the value for the Access-Control-Allow-Origin header R2 sets when requesting objects in a bucket from a browser.
  const GetR2BucketCorsRuleAllowed({
    required this.headers,
    required this.methods,
    required this.origins,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': headers,
      'methods': methods,
      'origins': origins,
    };
  }

  factory GetR2BucketCorsRuleAllowed.fromMap(Map<String, dynamic> map) {
    return GetR2BucketCorsRuleAllowed(
      headers: pulumi.Input.fromValue((map['headers'] as List).cast<String>()),
      methods: pulumi.Input.fromValue((map['methods'] as List).cast<String>()),
      origins: pulumi.Input.fromValue((map['origins'] as List).cast<String>()),
    );
  }
}
