// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// HTTPHeader describes a custom header to be used in HTTP probes
class HTTPHeader {
  /// The header field name. This will be canonicalized upon output, so case-variant names will be understood as the same header.
  final pulumi.Input<String> name;
  /// The header field value
  final pulumi.Input<String> value;

  /// Creates a new [HTTPHeader].
  /// [name] The header field name. This will be canonicalized upon output, so case-variant names will be understood as the same header.
  /// [value] The header field value
  const HTTPHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory HTTPHeader.fromMap(Map<String, dynamic> map) {
    return HTTPHeader(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

