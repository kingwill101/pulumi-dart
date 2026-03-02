// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppSpecStaticSiteCorsAllowOrigins {
  /// The `Access-Control-Allow-Origin` header will be set to the client's origin only if the client's origin exactly matches the value you provide.
  final pulumi.Input<String>? exact;
  /// The `Access-Control-Allow-Origin` header will be set to the client's origin if the beginning of the client's origin matches the value you provide.
  final pulumi.Input<String>? prefix;
  /// The `Access-Control-Allow-Origin` header will be set to the client's origin if the client’s origin matches the regex you provide, in [RE2 style syntax](https://github.com/google/re2/wiki/Syntax).
  final pulumi.Input<String>? regex;

  /// Creates a new [GetAppSpecStaticSiteCorsAllowOrigins].
  /// [exact] The `Access-Control-Allow-Origin` header will be set to the client's origin only if the client's origin exactly matches the value you provide.
  /// [prefix] The `Access-Control-Allow-Origin` header will be set to the client's origin if the beginning of the client's origin matches the value you provide.
  /// [regex] The `Access-Control-Allow-Origin` header will be set to the client's origin if the client’s origin matches the regex you provide, in [RE2 style syntax](https://github.com/google/re2/wiki/Syntax).
  GetAppSpecStaticSiteCorsAllowOrigins({
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

  factory GetAppSpecStaticSiteCorsAllowOrigins.fromMap(Map<String, dynamic> map) {
    return GetAppSpecStaticSiteCorsAllowOrigins(
      exact: map['exact'] == null ? null : (map['exact'] as String).input(),
      prefix: map['prefix'] == null ? null : (map['prefix'] as String).input(),
      regex: map['regex'] == null ? null : (map['regex'] as String).input(),
    );
  }
}

