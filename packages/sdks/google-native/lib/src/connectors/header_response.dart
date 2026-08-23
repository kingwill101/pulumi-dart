// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Header details for a given header to be added to Endpoint.
class HeaderResponse {
  /// Key of Header.
  final pulumi.Input<String> key;
  /// Value of Header.
  final pulumi.Input<String> value;

  /// Creates a new [HeaderResponse].
  /// [key] Key of Header.
  /// [value] Value of Header.
  const HeaderResponse({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory HeaderResponse.fromMap(Map<String, dynamic> map) {
    return HeaderResponse(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
