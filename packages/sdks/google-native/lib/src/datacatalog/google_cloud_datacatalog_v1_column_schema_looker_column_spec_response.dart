// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Column info specific to Looker System.
class GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpecResponse {
  /// Looker specific column type of this column.
  final pulumi.Input<String> type;

  /// Creates a new [GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpecResponse].
  /// [type] Looker specific column type of this column.
  const GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpecResponse({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpecResponse(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
