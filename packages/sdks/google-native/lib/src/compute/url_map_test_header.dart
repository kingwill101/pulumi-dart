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
  UrlMapTestHeader({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory UrlMapTestHeader.fromMap(Map<String, dynamic> map) {
    return UrlMapTestHeader(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

