// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes header information for http route matching.
class HttpRouteMatchHeaderResponse {
  /// Name of header to match in request.
  final pulumi.Input<String> name;
  /// how to match header value
  final pulumi.Input<String>? type;
  /// Value of header to match in request.
  final pulumi.Input<String>? value;

  /// Creates a new [HttpRouteMatchHeaderResponse].
  /// [name] Name of header to match in request.
  /// [type] how to match header value
  /// [value] Value of header to match in request.
  HttpRouteMatchHeaderResponse({
    required this.name,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': ?type,
      'value': ?value,
    };
  }

  factory HttpRouteMatchHeaderResponse.fromMap(Map<String, dynamic> map) {
    return HttpRouteMatchHeaderResponse(
      name: (map['name'] as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

