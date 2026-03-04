// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The HTTP header.
class HTTPHeaderResponse {
  /// The name in HTTP header.
  final pulumi.Input<String>? name;

  /// The value in HTTP header.
  final pulumi.Input<String>? value;

  /// Creates a new [HTTPHeaderResponse].
  /// [name] The name in HTTP header.
  /// [value] The value in HTTP header.
  HTTPHeaderResponse({this.name, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'value': ?value};
  }

  factory HTTPHeaderResponse.fromMap(Map<String, dynamic> map) {
    return HTTPHeaderResponse(
      name: (() {
        final guardedValue = map['name'];
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
