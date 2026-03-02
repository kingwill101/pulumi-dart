// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_header_match_response.dart';
import 'http_route_query_parameter_match_response.dart';

/// RouteMatch defines specifications used to match requests. If multiple match types are set, this RouteMatch will match if ALL type of matches are matched.
class HttpRouteRouteMatchResponse {
  /// The HTTP request path value should exactly match this value. Only one of full_path_match, prefix_match, or regex_match should be used.
  final pulumi.Input<String> fullPathMatch;
  /// Specifies a list of HTTP request headers to match against. ALL of the supplied headers must be matched.
  final pulumi.Input<List<HttpRouteHeaderMatchResponse>> headers;
  /// Specifies if prefix_match and full_path_match matches are case sensitive. The default value is false.
  final pulumi.Input<bool> ignoreCase;
  /// The HTTP request path value must begin with specified prefix_match. prefix_match must begin with a /. Only one of full_path_match, prefix_match, or regex_match should be used.
  final pulumi.Input<String> prefixMatch;
  /// Specifies a list of query parameters to match against. ALL of the query parameters must be matched.
  final pulumi.Input<List<HttpRouteQueryParameterMatchResponse>> queryParameters;
  /// The HTTP request path value must satisfy the regular expression specified by regex_match after removing any query parameters and anchor supplied with the original URL. For regular expression grammar, please see https://github.com/google/re2/wiki/Syntax Only one of full_path_match, prefix_match, or regex_match should be used.
  final pulumi.Input<String> regexMatch;

  /// Creates a new [HttpRouteRouteMatchResponse].
  /// [fullPathMatch] The HTTP request path value should exactly match this value. Only one of full_path_match, prefix_match, or regex_match should be used.
  /// [headers] Specifies a list of HTTP request headers to match against. ALL of the supplied headers must be matched.
  /// [ignoreCase] Specifies if prefix_match and full_path_match matches are case sensitive. The default value is false.
  /// [prefixMatch] The HTTP request path value must begin with specified prefix_match. prefix_match must begin with a /. Only one of full_path_match, prefix_match, or regex_match should be used.
  /// [queryParameters] Specifies a list of query parameters to match against. ALL of the query parameters must be matched.
  /// [regexMatch] The HTTP request path value must satisfy the regular expression specified by regex_match after removing any query parameters and anchor supplied with the original URL. For regular expression grammar, please see https://github.com/google/re2/wiki/Syntax Only one of full_path_match, prefix_match, or regex_match should be used.
  HttpRouteRouteMatchResponse({
    required this.fullPathMatch,
    required this.headers,
    required this.ignoreCase,
    required this.prefixMatch,
    required this.queryParameters,
    required this.regexMatch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fullPathMatch': fullPathMatch,
      'headers': pulumi.Input.mapInputValue<List<HttpRouteHeaderMatchResponse>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<HttpRouteHeaderMatchResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ignoreCase': ignoreCase,
      'prefixMatch': prefixMatch,
      'queryParameters': pulumi.Input.mapInputValue<List<HttpRouteQueryParameterMatchResponse>, List<Map<String, dynamic>>>(queryParameters, (value) => pulumi.Input.encodeList<HttpRouteQueryParameterMatchResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'regexMatch': regexMatch,
    };
  }

  factory HttpRouteRouteMatchResponse.fromMap(Map<String, dynamic> map) {
    return HttpRouteRouteMatchResponse(
      fullPathMatch: (map['fullPathMatch'] as String).input(),
      headers: (pulumi.Input.decodeList<HttpRouteHeaderMatchResponse>(map['headers'], (value) => HttpRouteHeaderMatchResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ignoreCase: (map['ignoreCase'] as bool).input(),
      prefixMatch: (map['prefixMatch'] as String).input(),
      queryParameters: (pulumi.Input.decodeList<HttpRouteQueryParameterMatchResponse>(map['queryParameters'], (value) => HttpRouteQueryParameterMatchResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      regexMatch: (map['regexMatch'] as String).input(),
    );
  }
}

