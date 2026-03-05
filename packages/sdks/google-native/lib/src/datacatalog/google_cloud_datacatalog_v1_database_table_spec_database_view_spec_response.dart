// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specification that applies to database view.
class GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpecResponse {
  /// Name of a singular table this view reflects one to one.
  final pulumi.Input<String> baseTable;
  /// SQL query used to generate this view.
  final pulumi.Input<String> sqlQuery;
  /// Type of this view.
  final pulumi.Input<String> viewType;

  /// Creates a new [GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpecResponse].
  /// [baseTable] Name of a singular table this view reflects one to one.
  /// [sqlQuery] SQL query used to generate this view.
  /// [viewType] Type of this view.
  GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpecResponse({
    required this.baseTable,
    required this.sqlQuery,
    required this.viewType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseTable': baseTable,
      'sqlQuery': sqlQuery,
      'viewType': viewType,
    };
  }

  factory GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1DatabaseTableSpecDatabaseViewSpecResponse(
      baseTable: pulumi.Input.fromValue(map['baseTable'] as String),
      sqlQuery: pulumi.Input.fromValue(map['sqlQuery'] as String),
      viewType: pulumi.Input.fromValue(map['viewType'] as String),
    );
  }
}

