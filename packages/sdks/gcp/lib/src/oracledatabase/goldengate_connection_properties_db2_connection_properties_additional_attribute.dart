// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoldengateConnectionPropertiesDb2ConnectionPropertiesAdditionalAttribute {
  /// The name of the property entry.
  final pulumi.Input<String> key;
  /// The value of the property entry.
  final pulumi.Input<String> value;

  /// Creates a new [GoldengateConnectionPropertiesDb2ConnectionPropertiesAdditionalAttribute].
  /// [key] The name of the property entry.
  /// [value] The value of the property entry.
  const GoldengateConnectionPropertiesDb2ConnectionPropertiesAdditionalAttribute({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GoldengateConnectionPropertiesDb2ConnectionPropertiesAdditionalAttribute.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionPropertiesDb2ConnectionPropertiesAdditionalAttribute(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
