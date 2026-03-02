// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_header_match.dart';
import 'http_route_query_parameter_match.dart';

/// RouteMatch defines specifications used to match requests. If multiple match types are set, this RouteMatch will match if ALL type of matches are matched.
class HttpRouteRouteMatch {
  /// The HTTP request path value should exactly match this value. Only one of full_path_match, prefix_match, or regex_match should be used.
  final pulumi.Input<String>? fullPathMatch;
  /// Specifies a list of HTTP request headers to match against. ALL of the supplied headers must be matched.
  final pulumi.Input<List<HttpRouteHeaderMatch>>? headers;
  /// Specifies if prefix_match and full_path_match matches are case sensitive. The default value is false.
  final pulumi.Input<bool>? ignoreCase;
  /// The HTTP request path value must begin with specified prefix_match. prefix_match must begin with a /. Only one of full_path_match, prefix_match, or regex_match should be used.
  final pulumi.Input<String>? prefixMatch;
  /// Specifies a list of query parameters to match against. ALL of the query parameters must be matched.
  final pulumi.Input<List<HttpRouteQueryParameterMatch>>? queryParameters;
  /// The HTTP request path value must satisfy the regular expression specified by regex_match after removing any query parameters and anchor supplied with the original URL. For regular expression grammar, please see https://github.com/google/re2/wiki/Syntax Only one of full_path_match, prefix_match, or regex_match should be used.
  final pulumi.Input<String>? regexMatch;

  /// Creates a new [HttpRouteRouteMatch].
  /// [fullPathMatch] The HTTP request path value should exactly match this value. Only one of full_path_match, prefix_match, or regex_match should be used.
  /// [headers] Specifies a list of HTTP request headers to match against. ALL of the supplied headers must be matched.
  /// [ignoreCase] Specifies if prefix_match and full_path_match matches are case sensitive. The default value is false.
  /// [prefixMatch] The HTTP request path value must begin with specified prefix_match. prefix_match must begin with a /. Only one of full_path_match, prefix_match, or regex_match should be used.
  /// [queryParameters] Specifies a list of query parameters to match against. ALL of the query parameters must be matched.
  /// [regexMatch] The HTTP request path value must satisfy the regular expression specified by regex_match after removing any query parameters and anchor supplied with the original URL. For regular expression grammar, please see https://github.com/google/re2/wiki/Syntax Only one of full_path_match, prefix_match, or regex_match should be used.
  HttpRouteRouteMatch({
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
      'headers': ?pulumi.Input.mapOptionalInputValue<List<HttpRouteHeaderMatch>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<HttpRouteHeaderMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ignoreCase': ?ignoreCase,
      'prefixMatch': ?prefixMatch,
      'queryParameters': ?pulumi.Input.mapOptionalInputValue<List<HttpRouteQueryParameterMatch>, List<Map<String, dynamic>>>(queryParameters, (value) => pulumi.Input.encodeList<HttpRouteQueryParameterMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'regexMatch': ?regexMatch,
    };
  }

  factory HttpRouteRouteMatch.fromMap(Map<String, dynamic> map) {
    return HttpRouteRouteMatch(
      fullPathMatch: map['fullPathMatch'] == null ? null : (map['fullPathMatch'] as String).input(),
      headers: map['headers'] == null ? null : (pulumi.Input.decodeList<HttpRouteHeaderMatch>(map['headers'], (value) => HttpRouteHeaderMatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ignoreCase: map['ignoreCase'] == null ? null : (map['ignoreCase'] as bool).input(),
      prefixMatch: map['prefixMatch'] == null ? null : (map['prefixMatch'] as String).input(),
      queryParameters: map['queryParameters'] == null ? null : (pulumi.Input.decodeList<HttpRouteQueryParameterMatch>(map['queryParameters'], (value) => HttpRouteQueryParameterMatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
      regexMatch: map['regexMatch'] == null ? null : (map['regexMatch'] as String).input(),
    );
  }
}

