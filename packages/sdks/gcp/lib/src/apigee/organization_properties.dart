// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_properties_property.dart';

class OrganizationProperties {
  /// List of all properties in the object.
  /// Structure is documented below.
  final pulumi.Input<List<OrganizationPropertiesProperty>>? properties;

  /// Creates a new [OrganizationProperties].
  /// [properties] List of all properties in the object.
  const OrganizationProperties({
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<List<OrganizationPropertiesProperty>, List<Map<String, dynamic>>>(properties, (value) => pulumi.Input.encodeList<OrganizationPropertiesProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OrganizationProperties.fromMap(Map<String, dynamic> map) {
    return OrganizationProperties(
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OrganizationPropertiesProperty>(guardedValue, (value) => OrganizationPropertiesProperty.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

