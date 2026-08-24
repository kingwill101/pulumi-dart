// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallRuleActionResponse {
  /// The response body to return. The value must conform to the configured content type.
  final pulumi.Input<String?>? body;
  /// The content type of the body. Must be one of the following: `text/plain`, `text/xml`, or `application/json`.
  final pulumi.Input<String?>? contentType;

  /// Creates a new [FirewallRuleActionResponse].
  /// [body] The response body to return. The value must conform to the configured content type.
  /// [contentType] The content type of the body. Must be one of the following: `text/plain`, `text/xml`, or `application/json`.
  const FirewallRuleActionResponse({
    this.body,
    this.contentType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': ?body,
      'contentType': ?contentType,
    };
  }

  factory FirewallRuleActionResponse.fromMap(Map<String, dynamic> map) {
    return FirewallRuleActionResponse(
      body: (() { final guardedValue = map['body']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
