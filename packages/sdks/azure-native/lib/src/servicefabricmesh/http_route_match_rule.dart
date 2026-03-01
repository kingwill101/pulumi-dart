// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_match_header.dart';
import 'http_route_match_path.dart';

/// Describes a rule for http route matching.
class HttpRouteMatchRule {
  /// headers and their values to match in request.
  final List<HttpRouteMatchHeader>? headers;
  /// Path to match for routing.
  final HttpRouteMatchPath path;

  /// Creates a new [HttpRouteMatchRule].
  /// [headers] headers and their values to match in request.
  /// [path] Path to match for routing.
  HttpRouteMatchRule({
    this.headers,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': ?headers == null ? null : pulumi.Input.encodeList<HttpRouteMatchHeader, Map<String, dynamic>>(headers!, (value) => value.toMap()),
      'path': path.toMap(),
    };
  }

  factory HttpRouteMatchRule.fromMap(Map<String, dynamic> map) {
    return HttpRouteMatchRule(
      headers: map['headers'] == null ? null : pulumi.Input.decodeList<HttpRouteMatchHeader>(map['headers'], (value) => HttpRouteMatchHeader.fromMap((value as Map).cast<String, dynamic>())),
      path: HttpRouteMatchPath.fromMap((map['path'] as Map).cast<String, dynamic>()),
    );
  }
}

