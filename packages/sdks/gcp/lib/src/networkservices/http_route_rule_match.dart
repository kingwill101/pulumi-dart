// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_rule_match_header.dart';
import 'http_route_rule_match_query_parameter.dart';

class HttpRouteRuleMatch {
  /// The HTTP request path value should exactly match this value.
  final pulumi.Input<String?>? fullPathMatch;
  /// Specifies a list of HTTP request headers to match against.
  /// Structure is documented below.
  final pulumi.Input<List<HttpRouteRuleMatchHeader>?>? headers;
  /// Specifies if prefixMatch and fullPathMatch matches are case sensitive. The default value is false.
  final pulumi.Input<bool?>? ignoreCase;
  /// The HTTP request path value must begin with specified prefixMatch. prefixMatch must begin with a /.
  final pulumi.Input<String?>? prefixMatch;
  /// Specifies a list of query parameters to match against.
  /// Structure is documented below.
  final pulumi.Input<List<HttpRouteRuleMatchQueryParameter>?>? queryParameters;
  /// The HTTP request path value must satisfy the regular expression specified by regexMatch after removing any query parameters and anchor supplied with the original URL. For regular expression grammar, please see https://github.com/google/re2/wiki/Syntax
  final pulumi.Input<String?>? regexMatch;

  /// Creates a new [HttpRouteRuleMatch].
  /// [fullPathMatch] The HTTP request path value should exactly match this value.
  /// [headers] Specifies a list of HTTP request headers to match against.
  /// [ignoreCase] Specifies if prefixMatch and fullPathMatch matches are case sensitive. The default value is false.
  /// [prefixMatch] The HTTP request path value must begin with specified prefixMatch. prefixMatch must begin with a /.
  /// [queryParameters] Specifies a list of query parameters to match against.
  /// [regexMatch] The HTTP request path value must satisfy the regular expression specified by regexMatch after removing any query parameters and anchor supplied with the original URL. For regular expression grammar, please see https://github.com/google/re2/wiki/Syntax
  const HttpRouteRuleMatch({
    this.fullPathMatch,
    this.headers,
    this.ignoreCase,
    this.prefixMatch,
    this.queryParameters,
    this.regexMatch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fullPathMatch': ?fullPathMatch,
      'headers': ?pulumi.Input.mapOptionalInputValue<List<HttpRouteRuleMatchHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<HttpRouteRuleMatchHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ignoreCase': ?ignoreCase,
      'prefixMatch': ?prefixMatch,
      'queryParameters': ?pulumi.Input.mapOptionalInputValue<List<HttpRouteRuleMatchQueryParameter>, List<Map<String, dynamic>>>(queryParameters, (value) => pulumi.Input.encodeList<HttpRouteRuleMatchQueryParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'regexMatch': ?regexMatch,
    };
  }

  factory HttpRouteRuleMatch.fromMap(Map<String, dynamic> map) {
    return HttpRouteRuleMatch(
      fullPathMatch: (() { final guardedValue = map['fullPathMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HttpRouteRuleMatchHeader>(guardedValue, (value) => HttpRouteRuleMatchHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ignoreCase: (() { final guardedValue = map['ignoreCase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      prefixMatch: (() { final guardedValue = map['prefixMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryParameters: (() { final guardedValue = map['queryParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HttpRouteRuleMatchQueryParameter>(guardedValue, (value) => HttpRouteRuleMatchQueryParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      regexMatch: (() { final guardedValue = map['regexMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
