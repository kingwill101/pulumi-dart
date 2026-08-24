// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiShieldAuthIdCharacteristic {
  /// The name of the characteristic field, i.e., the header or cookie name.
  final pulumi.Input<String> name;
  /// The type of characteristic.
  /// Available values: "header", "cookie", "jwt".
  final pulumi.Input<String> type;

  /// Creates a new [ApiShieldAuthIdCharacteristic].
  /// [name] The name of the characteristic field, i.e., the header or cookie name.
  /// [type] The type of characteristic.
  const ApiShieldAuthIdCharacteristic({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory ApiShieldAuthIdCharacteristic.fromMap(Map<String, dynamic> map) {
    return ApiShieldAuthIdCharacteristic(
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
