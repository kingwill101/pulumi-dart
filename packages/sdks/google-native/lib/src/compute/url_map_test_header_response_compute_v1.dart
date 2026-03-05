// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// HTTP headers used in UrlMapTests.
class UrlMapTestHeaderResponseComputeV1 {
  /// Header name.
  final pulumi.Input<String> name;
  /// Header value.
  final pulumi.Input<String> value;

  /// Creates a new [UrlMapTestHeaderResponseComputeV1].
  /// [name] Header name.
  /// [value] Header value.
  UrlMapTestHeaderResponseComputeV1({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory UrlMapTestHeaderResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return UrlMapTestHeaderResponseComputeV1(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

