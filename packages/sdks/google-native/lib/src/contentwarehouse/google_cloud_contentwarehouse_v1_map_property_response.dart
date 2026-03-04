// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Map property value. Represents a structured entries of key value pairs, consisting of field names which map to dynamically typed values.
class GoogleCloudContentwarehouseV1MapPropertyResponse {
  /// Unordered map of dynamically typed values.
  final pulumi.Input<Map<String, String>> fields;

  /// Creates a new [GoogleCloudContentwarehouseV1MapPropertyResponse].
  /// [fields] Unordered map of dynamically typed values.
  GoogleCloudContentwarehouseV1MapPropertyResponse({required this.fields});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'fields': fields};
  }

  factory GoogleCloudContentwarehouseV1MapPropertyResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudContentwarehouseV1MapPropertyResponse(
      fields: pulumi.Input.fromValue(
        (map['fields'] as Map).cast<String, String>(),
      ),
    );
  }
}
