// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoldengateConnectionPropertiesMicrosoftSqlserverConnectionPropertiesAdditionalAttribute {
  /// The name of the property entry.
  final pulumi.Input<String> key;
  /// The value of the property entry.
  final pulumi.Input<String> value;

  /// Creates a new [GoldengateConnectionPropertiesMicrosoftSqlserverConnectionPropertiesAdditionalAttribute].
  /// [key] The name of the property entry.
  /// [value] The value of the property entry.
  const GoldengateConnectionPropertiesMicrosoftSqlserverConnectionPropertiesAdditionalAttribute({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GoldengateConnectionPropertiesMicrosoftSqlserverConnectionPropertiesAdditionalAttribute.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionPropertiesMicrosoftSqlserverConnectionPropertiesAdditionalAttribute(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
