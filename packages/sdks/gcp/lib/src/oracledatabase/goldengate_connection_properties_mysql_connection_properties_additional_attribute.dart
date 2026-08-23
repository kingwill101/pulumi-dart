// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoldengateConnectionPropertiesMysqlConnectionPropertiesAdditionalAttribute {
  /// The name of the property entry.
  final pulumi.Input<String> key;
  /// The value of the property entry.
  final pulumi.Input<String> value;

  /// Creates a new [GoldengateConnectionPropertiesMysqlConnectionPropertiesAdditionalAttribute].
  /// [key] The name of the property entry.
  /// [value] The value of the property entry.
  const GoldengateConnectionPropertiesMysqlConnectionPropertiesAdditionalAttribute({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GoldengateConnectionPropertiesMysqlConnectionPropertiesAdditionalAttribute.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionPropertiesMysqlConnectionPropertiesAdditionalAttribute(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
