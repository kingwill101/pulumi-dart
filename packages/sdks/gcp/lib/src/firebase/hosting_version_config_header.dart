// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HostingVersionConfigHeader {
  /// The user-supplied glob to match against the request URL path.
  final pulumi.Input<String>? glob;
  /// The additional headers to add to the response. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final pulumi.Input<Map<String, String>> headers;
  /// The user-supplied RE2 regular expression to match against the request URL path.
  final pulumi.Input<String>? regex;

  /// Creates a new [HostingVersionConfigHeader].
  /// [glob] The user-supplied glob to match against the request URL path.
  /// [headers] The additional headers to add to the response. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  /// [regex] The user-supplied RE2 regular expression to match against the request URL path.
  HostingVersionConfigHeader({
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

  factory HostingVersionConfigHeader.fromMap(Map<String, dynamic> map) {
    return HostingVersionConfigHeader(
      glob: map['glob'] == null ? null : (map['glob']! as String).input(),
      headers: ((map['headers'] as Map).cast<String, String>()).input(),
      regex: map['regex'] == null ? null : (map['regex']! as String).input(),
    );
  }
}

