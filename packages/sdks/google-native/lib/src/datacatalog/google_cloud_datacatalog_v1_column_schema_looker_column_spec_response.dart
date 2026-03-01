// ignore_for_file: unused_element, unnecessary_cast


/// Column info specific to Looker System.
class GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpecResponse {
  /// Looker specific column type of this column.
  final String type;

  /// Creates a new [GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpecResponse].
  /// [type] Looker specific column type of this column.
  GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpecResponse({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpecResponse(
      type: map['type'] as String,
    );
  }
}

