// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRateLimitActionResponse {
  /// The response body to return. The value must conform to the configured content type.
  final pulumi.Input<String> body;
  /// The content type of the body. Must be one of the following: `text/plain`, `text/xml`, or `application/json`.
  final pulumi.Input<String> contentType;

  /// Creates a new [GetRateLimitActionResponse].
  /// [body] The response body to return. The value must conform to the configured content type.
  /// [contentType] The content type of the body. Must be one of the following: `text/plain`, `text/xml`, or `application/json`.
  const GetRateLimitActionResponse({
    required this.body,
    required this.contentType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': body,
      'contentType': contentType,
    };
  }

  factory GetRateLimitActionResponse.fromMap(Map<String, dynamic> map) {
    return GetRateLimitActionResponse(
      body: pulumi.Input.fromValue(map['body'] as String),
      contentType: pulumi.Input.fromValue(map['contentType'] as String),
    );
  }
}
