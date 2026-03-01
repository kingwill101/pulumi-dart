// ignore_for_file: unused_element, unnecessary_cast

import 'basic_authentication_response.dart';

class HttpRequestResponse {
  /// Gets or sets the authentication method of the request.
  final BasicAuthenticationResponse? authentication;
  /// Gets or sets the request body.
  final String? body;
  /// Gets or sets the headers.
  final Map<String, String>? headers;
  /// Gets or sets the method of the request.
  final String? method;
  /// Gets or sets the URI of the request.
  final String? uri;

  /// Creates a new [HttpRequestResponse].
  /// [authentication] Gets or sets the authentication method of the request.
  /// [body] Gets or sets the request body.
  /// [headers] Gets or sets the headers.
  /// [method] Gets or sets the method of the request.
  /// [uri] Gets or sets the URI of the request.
  HttpRequestResponse({
    this.authentication,
    this.body,
    this.headers,
    this.method,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?authentication == null ? null : authentication!.toMap(),
      'body': ?body,
      'headers': ?headers,
      'method': ?method,
      'uri': ?uri,
    };
  }

  factory HttpRequestResponse.fromMap(Map<String, dynamic> map) {
    return HttpRequestResponse(
      authentication: map['authentication'] == null ? null : BasicAuthenticationResponse.fromMap((map['authentication'] as Map).cast<String, dynamic>()),
      body: map['body'] == null ? null : map['body'] as String,
      headers: map['headers'] == null ? null : (map['headers'] as Map).cast<String, String>(),
      method: map['method'] == null ? null : map['method'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}

