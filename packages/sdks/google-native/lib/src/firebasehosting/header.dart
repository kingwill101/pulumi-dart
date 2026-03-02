// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A [`Header`](https://firebase.google.com/docs/hosting/full-config#headers) specifies a URL pattern that, if matched to the request URL path, triggers Hosting to apply the specified custom response headers.
class Header {
  /// The user-supplied [glob](https://firebase.google.com/docs/hosting/full-config#glob_pattern_matching) to match against the request URL path.
  final pulumi.Input<String>? glob;
  /// The additional headers to add to the response.
  final pulumi.Input<Map<String, String>> headers;
  /// The user-supplied RE2 regular expression to match against the request URL path.
  final pulumi.Input<String>? regex;

  /// Creates a new [Header].
  /// [glob] The user-supplied [glob](https://firebase.google.com/docs/hosting/full-config#glob_pattern_matching) to match against the request URL path.
  /// [headers] The additional headers to add to the response.
  /// [regex] The user-supplied RE2 regular expression to match against the request URL path.
  Header({
    this.glob,
    required this.headers,
    this.regex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'glob': ?glob,
      'headers': headers,
      'regex': ?regex,
    };
  }

  factory Header.fromMap(Map<String, dynamic> map) {
    return Header(
      glob: map['glob'] == null ? null : (map['glob']! as String).input(),
      headers: ((map['headers'] as Map).cast<String, String>()).input(),
      regex: map['regex'] == null ? null : (map['regex']! as String).input(),
    );
  }
}

