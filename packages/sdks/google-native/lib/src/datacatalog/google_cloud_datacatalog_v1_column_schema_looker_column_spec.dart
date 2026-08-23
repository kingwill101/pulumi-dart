// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1_column_schema_looker_column_spec_type.dart';

/// Column info specific to Looker System.
class GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpec {
  /// Looker specific column type of this column.
  final pulumi.Input<GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpecType>? type;

  /// Creates a new [GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpec].
  /// [type] Looker specific column type of this column.
  const GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpec({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpecType, String>(type, (value) => value.wireValue),
    };
  }

  factory GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpec(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpecType.fromValue(guardedValue as String)); })(),
    );
  }
}
