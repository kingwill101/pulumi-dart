// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_properties_property.dart';

class EnvironmentProperties {
  /// List of all properties in the object.
  /// Structure is documented below.
  final pulumi.Input<List<EnvironmentPropertiesProperty>?>? properties;

  /// Creates a new [EnvironmentProperties].
  /// [properties] List of all properties in the object.
  const EnvironmentProperties({
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentPropertiesProperty>, List<Map<String, dynamic>>>(properties, (value) => pulumi.Input.encodeList<EnvironmentPropertiesProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EnvironmentProperties.fromMap(Map<String, dynamic> map) {
    return EnvironmentProperties(
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnvironmentPropertiesProperty>(guardedValue, (value) => EnvironmentPropertiesProperty.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
