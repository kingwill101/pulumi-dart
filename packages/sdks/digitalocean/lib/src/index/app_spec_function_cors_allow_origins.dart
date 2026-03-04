// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppSpecFunctionCorsAllowOrigins {
  /// Exact string match.
  final pulumi.Input<String>? exact;

  /// Prefix-based match.
  final pulumi.Input<String>? prefix;

  /// RE2 style regex-based match.
  final pulumi.Input<String>? regex;

  /// Creates a new [AppSpecFunctionCorsAllowOrigins].
  /// [exact] Exact string match.
  /// [prefix] Prefix-based match.
  /// [regex] RE2 style regex-based match.
  AppSpecFunctionCorsAllowOrigins({this.exact, this.prefix, this.regex});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exact': ?exact,
      'prefix': ?prefix,
      'regex': ?regex,
    };
  }

  factory AppSpecFunctionCorsAllowOrigins.fromMap(Map<String, dynamic> map) {
    return AppSpecFunctionCorsAllowOrigins(
      exact: (() {
        final guardedValue = map['exact'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      prefix: (() {
        final guardedValue = map['prefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      regex: (() {
        final guardedValue = map['regex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
