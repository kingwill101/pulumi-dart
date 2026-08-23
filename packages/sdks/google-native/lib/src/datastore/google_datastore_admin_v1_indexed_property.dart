// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_datastore_admin_v1_indexed_property_direction.dart';

/// A property of an index.
class GoogleDatastoreAdminV1IndexedProperty {
  /// The indexed property's direction. Must not be DIRECTION_UNSPECIFIED.
  final pulumi.Input<GoogleDatastoreAdminV1IndexedPropertyDirection> direction;
  /// The property name to index.
  final pulumi.Input<String> name;

  /// Creates a new [GoogleDatastoreAdminV1IndexedProperty].
  /// [direction] The indexed property's direction. Must not be DIRECTION_UNSPECIFIED.
  /// [name] The property name to index.
  const GoogleDatastoreAdminV1IndexedProperty({
    required this.direction,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': pulumi.Input.mapInputValue<GoogleDatastoreAdminV1IndexedPropertyDirection, String>(direction, (value) => value.wireValue),
      'name': name,
    };
  }

  factory GoogleDatastoreAdminV1IndexedProperty.fromMap(Map<String, dynamic> map) {
    return GoogleDatastoreAdminV1IndexedProperty(
      direction: pulumi.Input.fromValue(GoogleDatastoreAdminV1IndexedPropertyDirection.fromValue(map['direction']! as String)),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
