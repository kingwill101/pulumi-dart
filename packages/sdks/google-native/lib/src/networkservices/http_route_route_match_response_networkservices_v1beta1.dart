// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_header_match_response_networkservices_v1beta1.dart';
import 'http_route_query_parameter_match_response_networkservices_v1beta1.dart';

/// RouteMatch defines specifications used to match requests. If multiple match types are set, this RouteMatch will match if ALL type of matches are matched.
class HttpRouteRouteMatchResponseNetworkservicesV1beta1 {
  /// The HTTP request path value should exactly match this value. Only one of full_path_match, prefix_match, or regex_match should be used.
  final pulumi.Input<String> fullPathMatch;
  /// Specifies a list of HTTP request headers to match against. ALL of the supplied headers must be matched.
  final pulumi.Input<List<HttpRouteHeaderMatchResponseNetworkservicesV1beta1>> headers;
  /// Specifies if prefix_match and full_path_match matches are case sensitive. The default value is false.
  final pulumi.Input<bool> ignoreCase;
  /// The HTTP request path value must begin with specified prefix_match. prefix_match must begin with a /. Only one of full_path_match, prefix_match, or regex_match should be used.
  final pulumi.Input<String> prefixMatch;
  /// Specifies a list of query parameters to match against. ALL of the query parameters must be matched.
  final pulumi.Input<List<HttpRouteQueryParameterMatchResponseNetworkservicesV1beta1>> queryParameters;
  /// The HTTP request path value must satisfy the regular expression specified by regex_match after removing any query parameters and anchor supplied with the original URL. For regular expression grammar, please see https://github.com/google/re2/wiki/Syntax Only one of full_path_match, prefix_match, or regex_match should be used.
  final pulumi.Input<String> regexMatch;

  /// Creates a new [HttpRouteRouteMatchResponseNetworkservicesV1beta1].
  /// [fullPathMatch] The HTTP request path value should exactly match this value. Only one of full_path_match, prefix_match, or regex_match should be used.
  /// [headers] Specifies a list of HTTP request headers to match against. ALL of the supplied headers must be matched.
  /// [ignoreCase] Specifies if prefix_match and full_path_match matches are case sensitive. The default value is false.
  /// [prefixMatch] The HTTP request path value must begin with specified prefix_match. prefix_match must begin with a /. Only one of full_path_match, prefix_match, or regex_match should be used.
  /// [queryParameters] Specifies a list of query parameters to match against. ALL of the query parameters must be matched.
  /// [regexMatch] The HTTP request path value must satisfy the regular expression specified by regex_match after removing any query parameters and anchor supplied with the original URL. For regular expression grammar, please see https://github.com/google/re2/wiki/Syntax Only one of full_path_match, prefix_match, or regex_match should be used.
  const HttpRouteRouteMatchResponseNetworkservicesV1beta1({
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
      'headers': pulumi.Input.mapInputValue<List<HttpRouteHeaderMatchResponseNetworkservicesV1beta1>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<HttpRouteHeaderMatchResponseNetworkservicesV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ignoreCase': ignoreCase,
      'prefixMatch': prefixMatch,
      'queryParameters': pulumi.Input.mapInputValue<List<HttpRouteQueryParameterMatchResponseNetworkservicesV1beta1>, List<Map<String, dynamic>>>(queryParameters, (value) => pulumi.Input.encodeList<HttpRouteQueryParameterMatchResponseNetworkservicesV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'regexMatch': regexMatch,
    };
  }

  factory HttpRouteRouteMatchResponseNetworkservicesV1beta1.fromMap(Map<String, dynamic> map) {
    return HttpRouteRouteMatchResponseNetworkservicesV1beta1(
      fullPathMatch: pulumi.Input.fromValue(map['fullPathMatch'] as String),
      headers: pulumi.Input.fromValue(pulumi.Input.decodeList<HttpRouteHeaderMatchResponseNetworkservicesV1beta1>(map['headers']!, (value) => HttpRouteHeaderMatchResponseNetworkservicesV1beta1.fromMap((value as Map).cast<String, dynamic>()))),
      ignoreCase: pulumi.Input.fromValue(map['ignoreCase'] as bool),
      prefixMatch: pulumi.Input.fromValue(map['prefixMatch'] as String),
      queryParameters: pulumi.Input.fromValue(pulumi.Input.decodeList<HttpRouteQueryParameterMatchResponseNetworkservicesV1beta1>(map['queryParameters']!, (value) => HttpRouteQueryParameterMatchResponseNetworkservicesV1beta1.fromMap((value as Map).cast<String, dynamic>()))),
      regexMatch: pulumi.Input.fromValue(map['regexMatch'] as String),
    );
  }
}
