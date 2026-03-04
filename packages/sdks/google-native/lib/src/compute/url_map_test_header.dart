// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// HTTP headers used in UrlMapTests.
class UrlMapTestHeader {
  /// Header name.
  final pulumi.Input<String>? name;

  /// Header value.
  final pulumi.Input<String>? value;

  /// Creates a new [UrlMapTestHeader].
  /// [name] Header name.
  /// [value] Header value.
  UrlMapTestHeader({this.name, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'value': ?value};
  }

  factory UrlMapTestHeader.fromMap(Map<String, dynamic> map) {
    return UrlMapTestHeader(
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
