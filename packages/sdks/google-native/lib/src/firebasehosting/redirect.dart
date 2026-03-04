// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A [`Redirect`](https://firebase.google.com/docs/hosting/full-config#redirects) specifies a URL pattern that, if matched to the request URL path, triggers Hosting to respond with a redirect to the specified destination path.
class Redirect {
  /// The user-supplied [glob](https://firebase.google.com/docs/hosting/full-config#glob_pattern_matching) to match against the request URL path.
  final pulumi.Input<String>? glob;

  /// The value to put in the HTTP location header of the response. The location can contain capture group values from the pattern using a `:` prefix to identify the segment and an optional `*` to capture the rest of the URL. For example: "glob": "/:capture*", "statusCode": 301, "location": "https://example.com/foo/:capture"
  final pulumi.Input<String> location;

  /// The user-supplied RE2 regular expression to match against the request URL path.
  final pulumi.Input<String>? regex;

  /// The status HTTP code to return in the response. It must be a valid 3xx status code.
  final pulumi.Input<int> statusCode;

  /// Creates a new [Redirect].
  /// [glob] The user-supplied [glob](https://firebase.google.com/docs/hosting/full-config#glob_pattern_matching) to match against the request URL path.
  /// [location] The value to put in the HTTP location header of the response. The location can contain capture group values from the pattern using a `:` prefix to identify the segment and an optional `*` to capture the rest of the URL. For example: "glob": "/:capture*", "statusCode": 301, "location": "https://example.com/foo/:capture"
  /// [regex] The user-supplied RE2 regular expression to match against the request URL path.
  /// [statusCode] The status HTTP code to return in the response. It must be a valid 3xx status code.
  Redirect({
    this.glob,
    required this.location,
    this.regex,
    required this.statusCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'glob': ?glob,
      'location': location,
      'regex': ?regex,
      'statusCode': statusCode,
    };
  }

  factory Redirect.fromMap(Map<String, dynamic> map) {
    return Redirect(
      glob: (() {
        final guardedValue = map['glob'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      regex: (() {
        final guardedValue = map['regex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      statusCode: pulumi.Input.fromValue(map['statusCode'] as int),
    );
  }
}
