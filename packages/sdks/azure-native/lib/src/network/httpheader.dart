// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The HTTP header.
class HTTPHeader {
  /// The name in HTTP header.
  final pulumi.Input<String?>? name;
  /// The value in HTTP header.
  final pulumi.Input<String?>? value;

  /// Creates a new [HTTPHeader].
  /// [name] The name in HTTP header.
  /// [value] The value in HTTP header.
  const HTTPHeader({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory HTTPHeader.fromMap(Map<String, dynamic> map) {
    return HTTPHeader(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
