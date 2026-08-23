// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoldengateConnectionPropertiesGenericConnectionProperties {
  /// The host of the GenericConnection.
  final pulumi.Input<String>? host;
  /// The technology type.
  final pulumi.Input<String>? technologyType;

  /// Creates a new [GoldengateConnectionPropertiesGenericConnectionProperties].
  /// [host] The host of the GenericConnection.
  /// [technologyType] The technology type.
  const GoldengateConnectionPropertiesGenericConnectionProperties({
    this.host,
    this.technologyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'technologyType': ?technologyType,
    };
  }

  factory GoldengateConnectionPropertiesGenericConnectionProperties.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionPropertiesGenericConnectionProperties(
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      technologyType: (() { final guardedValue = map['technologyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
