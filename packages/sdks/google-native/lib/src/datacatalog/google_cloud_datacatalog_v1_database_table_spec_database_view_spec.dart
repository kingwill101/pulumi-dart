// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1_database_table_spec_database_view_spec_view_type.dart';

/// Specification that applies to database view.
class GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpec {
  /// Name of a singular table this view reflects one to one.
  final pulumi.Input<String>? baseTable;

  /// SQL query used to generate this view.
  final pulumi.Input<String>? sqlQuery;

  /// Type of this view.
  final pulumi.Input<
    GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpecViewType
  >?
  viewType;

  /// Creates a new [GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpec].
  /// [baseTable] Name of a singular table this view reflects one to one.
  /// [sqlQuery] SQL query used to generate this view.
  /// [viewType] Type of this view.
  GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpec({
    this.baseTable,
    this.sqlQuery,
    this.viewType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseTable': ?baseTable,
      'sqlQuery': ?sqlQuery,
      'viewType':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpecViewType,
            String
          >(viewType, (value) => value.wireValue),
    };
  }

  factory GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpec.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpec(
      baseTable: (() {
        final guardedValue = map['baseTable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sqlQuery: (() {
        final guardedValue = map['sqlQuery'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      viewType: (() {
        final guardedValue = map['viewType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpecViewType.fromValue(
            guardedValue as String,
          ),
        );
      })(),
    );
  }
}
