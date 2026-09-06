// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_match_header.dart';
import 'http_route_match_path.dart';

/// Describes a rule for http route matching.
class HttpRouteMatchRule {
  /// headers and their values to match in request.
  final pulumi.Input<List<HttpRouteMatchHeader>?>? headers;
  /// Path to match for routing.
  final pulumi.Input<HttpRouteMatchPath> path;

  /// Creates a new [HttpRouteMatchRule].
  /// [headers] headers and their values to match in request.
  /// [path] Path to match for routing.
  const HttpRouteMatchRule({
    this.headers,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': ?pulumi.Input.mapOptionalInputValue<List<HttpRouteMatchHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<HttpRouteMatchHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'path': pulumi.Input.mapInputValue<HttpRouteMatchPath, Map<String, dynamic>>(path, (value) => value.toMap()),
    };
  }

  factory HttpRouteMatchRule.fromMap(Map<String, dynamic> map) {
    return HttpRouteMatchRule(
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HttpRouteMatchHeader>(guardedValue, (value) => HttpRouteMatchHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      path: pulumi.Input.fromValue(HttpRouteMatchPath.fromMap((map['path']! as Map).cast<String, dynamic>())),
    );
  }
}
