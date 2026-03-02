// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppSpecServiceCorsAllowOrigins {
  /// Exact string match.
  final pulumi.Input<String>? exact;
  /// Prefix-based match.
  final pulumi.Input<String>? prefix;
  /// RE2 style regex-based match.
  final pulumi.Input<String>? regex;

  /// Creates a new [AppSpecServiceCorsAllowOrigins].
  /// [exact] Exact string match.
  /// [prefix] Prefix-based match.
  /// [regex] RE2 style regex-based match.
  AppSpecServiceCorsAllowOrigins({
    this.exact,
    this.prefix,
    this.regex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exact': ?exact,
      'prefix': ?prefix,
      'regex': ?regex,
    };
  }

  factory AppSpecServiceCorsAllowOrigins.fromMap(Map<String, dynamic> map) {
    return AppSpecServiceCorsAllowOrigins(
      exact: map['exact'] == null ? null : (map['exact'] as String).input(),
      prefix: map['prefix'] == null ? null : (map['prefix'] as String).input(),
      regex: map['regex'] == null ? null : (map['regex'] as String).input(),
    );
  }
}

