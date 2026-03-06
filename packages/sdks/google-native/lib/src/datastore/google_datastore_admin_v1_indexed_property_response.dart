// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A property of an index.
class GoogleDatastoreAdminV1IndexedPropertyResponse {
  /// The indexed property's direction. Must not be DIRECTION_UNSPECIFIED.
  final pulumi.Input<String> direction;
  /// The property name to index.
  final pulumi.Input<String> name;

  /// Creates a new [GoogleDatastoreAdminV1IndexedPropertyResponse].
  /// [direction] The indexed property's direction. Must not be DIRECTION_UNSPECIFIED.
  /// [name] The property name to index.
  const GoogleDatastoreAdminV1IndexedPropertyResponse({
    required this.direction,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': direction,
      'name': name,
    };
  }

  factory GoogleDatastoreAdminV1IndexedPropertyResponse.fromMap(Map<String, dynamic> map) {
    return GoogleDatastoreAdminV1IndexedPropertyResponse(
      direction: pulumi.Input.fromValue(map['direction'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

