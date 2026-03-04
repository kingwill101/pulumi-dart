// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Map property value. Represents a structured entries of key value pairs, consisting of field names which map to dynamically typed values.
class GoogleCloudContentwarehouseV1MapProperty {
  /// Unordered map of dynamically typed values.
  final pulumi.Input<Map<String, String>>? fields;

  /// Creates a new [GoogleCloudContentwarehouseV1MapProperty].
  /// [fields] Unordered map of dynamically typed values.
  GoogleCloudContentwarehouseV1MapProperty({this.fields});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'fields': ?fields};
  }

  factory GoogleCloudContentwarehouseV1MapProperty.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudContentwarehouseV1MapProperty(
      fields: (() {
        final guardedValue = map['fields'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
