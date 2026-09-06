// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HttpRequestResponse {
  /// Gets or sets the authentication method of the request.
  final pulumi.Input<dynamic>? authentication;
  /// Gets or sets the request body.
  final pulumi.Input<String?>? body;
  /// Gets or sets the headers.
  final pulumi.Input<Map<String, String>?>? headers;
  /// Gets or sets the method of the request.
  final pulumi.Input<String?>? method;
  /// Gets or sets the URI of the request.
  final pulumi.Input<String?>? uri;

  /// Creates a new [HttpRequestResponse].
  /// [authentication] Gets or sets the authentication method of the request.
  /// [body] Gets or sets the request body.
  /// [headers] Gets or sets the headers.
  /// [method] Gets or sets the method of the request.
  /// [uri] Gets or sets the URI of the request.
  const HttpRequestResponse({
    this.authentication,
    this.body,
    this.headers,
    this.method,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?authentication,
      'body': ?body,
      'headers': ?headers,
      'method': ?method,
      'uri': ?uri,
    };
  }

  factory HttpRequestResponse.fromMap(Map<String, dynamic> map) {
    return HttpRequestResponse(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      body: (() { final guardedValue = map['body']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      method: (() { final guardedValue = map['method']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
