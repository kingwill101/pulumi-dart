// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1_database_table_spec_database_view_spec.dart';
import 'google_cloud_datacatalog_v1_database_table_spec_type.dart';

/// Specification that applies to a table resource. Valid only for entries with the `TABLE` type.
class GoogleCloudDatacatalogV1DatabaseTableSpec {
  /// Spec what aplies to tables that are actually views. Not set for "real" tables.
  final pulumi.Input<GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpec>? databaseViewSpec;
  /// Type of this table.
  final pulumi.Input<GoogleCloudDatacatalogV1DatabaseTableSpecType>? type;

  /// Creates a new [GoogleCloudDatacatalogV1DatabaseTableSpec].
  /// [databaseViewSpec] Spec what aplies to tables that are actually views. Not set for "real" tables.
  /// [type] Type of this table.
  GoogleCloudDatacatalogV1DatabaseTableSpec({
    this.databaseViewSpec,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseViewSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpec, Map<String, dynamic>>(databaseViewSpec, (value) => value.toMap()),
      'type': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatacatalogV1DatabaseTableSpecType, String>(type, (value) => value.wireValue),
    };
  }

  factory GoogleCloudDatacatalogV1DatabaseTableSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1DatabaseTableSpec(
      databaseViewSpec: (() { final guardedValue = map['databaseViewSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDatacatalogV1DatabaseTableSpecType.fromValue(guardedValue as String)); })(),
    );
  }
}

