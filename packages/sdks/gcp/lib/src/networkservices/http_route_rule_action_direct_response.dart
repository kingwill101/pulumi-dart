// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HttpRouteRuleActionDirectResponse {
  /// Response body as base64 encoded bytes. Maximum body size is 4096B.
  final pulumi.Input<String?>? bytesBody;
  /// Status to return as part of HTTP Response. Must be a positive integer.
  final pulumi.Input<int> status;
  /// Response body as a string. Maximum body length is 1024 characters.
  final pulumi.Input<String?>? stringBody;

  /// Creates a new [HttpRouteRuleActionDirectResponse].
  /// [bytesBody] Response body as base64 encoded bytes. Maximum body size is 4096B.
  /// [status] Status to return as part of HTTP Response. Must be a positive integer.
  /// [stringBody] Response body as a string. Maximum body length is 1024 characters.
  const HttpRouteRuleActionDirectResponse({
    this.bytesBody,
    required this.status,
    this.stringBody,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bytesBody': ?bytesBody,
      'status': status,
      'stringBody': ?stringBody,
    };
  }

  factory HttpRouteRuleActionDirectResponse.fromMap(Map<String, dynamic> map) {
    return HttpRouteRuleActionDirectResponse(
      bytesBody: (() { final guardedValue = map['bytesBody']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['status'])),
      stringBody: (() { final guardedValue = map['stringBody']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
