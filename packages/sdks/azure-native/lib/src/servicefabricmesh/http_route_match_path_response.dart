// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Path to match for routing.
class HttpRouteMatchPathResponse {
  /// replacement string for matched part of the Uri.
  final pulumi.Input<String>? rewrite;
  /// how to match value in the Uri
  final pulumi.Input<String> type;
  /// Uri path to match for request.
  final pulumi.Input<String> value;

  /// Creates a new [HttpRouteMatchPathResponse].
  /// [rewrite] replacement string for matched part of the Uri.
  /// [type] how to match value in the Uri
  /// [value] Uri path to match for request.
  const HttpRouteMatchPathResponse({
    this.rewrite,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rewrite': ?rewrite,
      'type': type,
      'value': value,
    };
  }

  factory HttpRouteMatchPathResponse.fromMap(Map<String, dynamic> map) {
    return HttpRouteMatchPathResponse(
      rewrite: (() { final guardedValue = map['rewrite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

