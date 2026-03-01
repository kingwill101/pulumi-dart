// ignore_for_file: unused_element, unnecessary_cast


/// A [`Header`](https://firebase.google.com/docs/hosting/full-config#headers) specifies a URL pattern that, if matched to the request URL path, triggers Hosting to apply the specified custom response headers.
class HeaderResponse {
  /// The user-supplied [glob](https://firebase.google.com/docs/hosting/full-config#glob_pattern_matching) to match against the request URL path.
  final String glob;
  /// The additional headers to add to the response.
  final Map<String, String> headers;
  /// The user-supplied RE2 regular expression to match against the request URL path.
  final String regex;

  /// Creates a new [HeaderResponse].
  /// [glob] The user-supplied [glob](https://firebase.google.com/docs/hosting/full-config#glob_pattern_matching) to match against the request URL path.
  /// [headers] The additional headers to add to the response.
  /// [regex] The user-supplied RE2 regular expression to match against the request URL path.
  HeaderResponse({
    required this.glob,
    required this.headers,
    required this.regex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'glob': glob,
      'headers': headers,
      'regex': regex,
    };
  }

  factory HeaderResponse.fromMap(Map<String, dynamic> map) {
    return HeaderResponse(
      glob: map['glob'] as String,
      headers: (map['headers'] as Map).cast<String, String>(),
      regex: map['regex'] as String,
    );
  }
}

