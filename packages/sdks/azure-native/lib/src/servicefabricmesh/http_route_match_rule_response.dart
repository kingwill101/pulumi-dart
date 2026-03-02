// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_match_header_response.dart';
import 'http_route_match_path_response.dart';

/// Describes a rule for http route matching.
class HttpRouteMatchRuleResponse {
  /// headers and their values to match in request.
  final pulumi.Input<List<HttpRouteMatchHeaderResponse>>? headers;
  /// Path to match for routing.
  final pulumi.Input<HttpRouteMatchPathResponse> path;

  /// Creates a new [HttpRouteMatchRuleResponse].
  /// [headers] headers and their values to match in request.
  /// [path] Path to match for routing.
  HttpRouteMatchRuleResponse({
    this.headers,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': ?pulumi.Input.mapOptionalInputValue<List<HttpRouteMatchHeaderResponse>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<HttpRouteMatchHeaderResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'path': pulumi.Input.mapInputValue<HttpRouteMatchPathResponse, Map<String, dynamic>>(path, (value) => value.toMap()),
    };
  }

  factory HttpRouteMatchRuleResponse.fromMap(Map<String, dynamic> map) {
    return HttpRouteMatchRuleResponse(
      headers: map['headers'] == null ? null : (pulumi.Input.decodeList<HttpRouteMatchHeaderResponse>(map['headers'], (value) => HttpRouteMatchHeaderResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      path: (HttpRouteMatchPathResponse.fromMap((map['path'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

