// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_properties_property.dart';

class EnvironmentProperties {
  /// List of all properties in the object.
  /// Structure is documented below.
  final List<EnvironmentPropertiesProperty>? properties;

  /// Creates a new [EnvironmentProperties].
  /// [properties] List of all properties in the object.
  EnvironmentProperties({
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?properties == null ? null : pulumi.Input.encodeList<EnvironmentPropertiesProperty, Map<String, dynamic>>(properties!, (value) => value.toMap()),
    };
  }

  factory EnvironmentProperties.fromMap(Map<String, dynamic> map) {
    return EnvironmentProperties(
      properties: map['properties'] == null ? null : pulumi.Input.decodeList<EnvironmentPropertiesProperty>(map['properties'], (value) => EnvironmentPropertiesProperty.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

