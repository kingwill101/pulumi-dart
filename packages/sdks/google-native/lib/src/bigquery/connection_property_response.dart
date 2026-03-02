// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionPropertyResponse {
  /// [Required] Name of the connection property to set.
  final pulumi.Input<String> key;
  /// [Required] Value of the connection property.
  final pulumi.Input<String> value;

  /// Creates a new [ConnectionPropertyResponse].
  /// [key] [Required] Name of the connection property to set.
  /// [value] [Required] Value of the connection property.
  ConnectionPropertyResponse({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory ConnectionPropertyResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionPropertyResponse(
      key: (map['key'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

