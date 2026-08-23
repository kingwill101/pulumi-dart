// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoldengateConnectionPropertiesPostgresqlConnectionPropertiesAdditionalAttribute {
  /// The name of the property entry.
  final pulumi.Input<String> key;
  /// The value of the property entry.
  final pulumi.Input<String> value;

  /// Creates a new [GoldengateConnectionPropertiesPostgresqlConnectionPropertiesAdditionalAttribute].
  /// [key] The name of the property entry.
  /// [value] The value of the property entry.
  const GoldengateConnectionPropertiesPostgresqlConnectionPropertiesAdditionalAttribute({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GoldengateConnectionPropertiesPostgresqlConnectionPropertiesAdditionalAttribute.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionPropertiesPostgresqlConnectionPropertiesAdditionalAttribute(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
