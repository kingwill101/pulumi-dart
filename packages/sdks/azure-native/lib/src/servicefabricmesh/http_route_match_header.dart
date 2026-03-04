// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes header information for http route matching.
class HttpRouteMatchHeader {
  /// Name of header to match in request.
  final pulumi.Input<String> name;

  /// how to match header value
  final pulumi.Input<String>? type;

  /// Value of header to match in request.
  final pulumi.Input<String>? value;

  /// Creates a new [HttpRouteMatchHeader].
  /// [name] Name of header to match in request.
  /// [type] how to match header value
  /// [value] Value of header to match in request.
  HttpRouteMatchHeader({required this.name, this.type, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'type': ?type, 'value': ?value};
  }

  factory HttpRouteMatchHeader.fromMap(Map<String, dynamic> map) {
    return HttpRouteMatchHeader(
      name: pulumi.Input.fromValue(map['name'] as String),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
