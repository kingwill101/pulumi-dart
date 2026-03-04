// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// HTTP headers used in UrlMapTests.
class UrlMapTestHeaderResponseComputeBeta {
  /// Header name.
  final pulumi.Input<String> name;

  /// Header value.
  final pulumi.Input<String> value;

  /// Creates a new [UrlMapTestHeaderResponseComputeBeta].
  /// [name] Header name.
  /// [value] Header value.
  UrlMapTestHeaderResponseComputeBeta({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory UrlMapTestHeaderResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return UrlMapTestHeaderResponseComputeBeta(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
