// ignore_for_file: unused_element, unnecessary_cast


/// API connection properties
class ApiConnectionTestLink {
  /// HTTP Method
  final String? method;
  /// Test link request URI
  final String? requestUri;

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
      method: map['method'] == null ? null : map['method'] as String,
      requestUri: map['requestUri'] == null ? null : map['requestUri'] as String,
    );
  }
}

