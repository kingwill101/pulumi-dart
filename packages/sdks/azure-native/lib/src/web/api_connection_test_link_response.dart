// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// API connection properties
class ApiConnectionTestLinkResponse {
  /// HTTP Method
  final pulumi.Input<String>? method;
  /// Test link request URI
  final pulumi.Input<String>? requestUri;

  /// Creates a new [ApiConnectionTestLinkResponse].
  /// [method] HTTP Method
  /// [requestUri] Test link request URI
  ApiConnectionTestLinkResponse({
    this.method,
    this.requestUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'method': ?method,
      'requestUri': ?requestUri,
    };
  }

  factory ApiConnectionTestLinkResponse.fromMap(Map<String, dynamic> map) {
    return ApiConnectionTestLinkResponse(
      method: map['method'] == null ? null : (map['method'] as String).input(),
      requestUri: map['requestUri'] == null ? null : (map['requestUri'] as String).input(),
    );
  }
}

