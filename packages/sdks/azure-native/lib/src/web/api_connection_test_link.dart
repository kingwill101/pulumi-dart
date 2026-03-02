// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// API connection properties
class ApiConnectionTestLink {
  /// HTTP Method
  final pulumi.Input<String>? method;
  /// Test link request URI
  final pulumi.Input<String>? requestUri;

  /// Creates a new [ApiConnectionTestLink].
  /// [method] HTTP Method
  /// [requestUri] Test link request URI
  ApiConnectionTestLink({
    this.method,
    this.requestUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'method': ?method,
      'requestUri': ?requestUri,
    };
  }

  factory ApiConnectionTestLink.fromMap(Map<String, dynamic> map) {
    return ApiConnectionTestLink(
      method: map['method'] == null ? null : (map['method']! as String).input(),
      requestUri: map['requestUri'] == null ? null : (map['requestUri']! as String).input(),
    );
  }
}

