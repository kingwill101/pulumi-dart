// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An optional field under "Rewrite Action". It lets you capture and modify the value(s) of a specific header when multiple headers with the same name exist. Currently supported for Set-Cookie Response header only. For more details, visit https://aka.ms/appgwheadercrud
class HeaderValueMatcherResponse {
  /// Setting this parameter to truth value with force the pattern to do a case in-sensitive comparison.
  final pulumi.Input<bool>? ignoreCase;
  /// Setting this value as truth will force to check the negation of the condition given by the user in the pattern field.
  final pulumi.Input<bool>? negate;
  /// The pattern, either fixed string or regular expression, that evaluates if a header value should be selected for rewrite.
  final pulumi.Input<String>? pattern;

  /// Creates a new [HeaderValueMatcherResponse].
  /// [ignoreCase] Setting this parameter to truth value with force the pattern to do a case in-sensitive comparison.
  /// [negate] Setting this value as truth will force to check the negation of the condition given by the user in the pattern field.
  /// [pattern] The pattern, either fixed string or regular expression, that evaluates if a header value should be selected for rewrite.
  const HeaderValueMatcherResponse({
    this.ignoreCase,
    this.negate,
    this.pattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ignoreCase': ?ignoreCase,
      'negate': ?negate,
      'pattern': ?pattern,
    };
  }

  factory HeaderValueMatcherResponse.fromMap(Map<String, dynamic> map) {
    return HeaderValueMatcherResponse(
      ignoreCase: (() { final guardedValue = map['ignoreCase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      negate: (() { final guardedValue = map['negate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      pattern: (() { final guardedValue = map['pattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

