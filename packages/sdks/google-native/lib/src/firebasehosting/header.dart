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
  const Header({
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
      glob: (() { final guardedValue = map['glob']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headers: pulumi.Input.fromValue((map['headers'] as Map).cast<String, String>()),
      regex: (() { final guardedValue = map['regex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
