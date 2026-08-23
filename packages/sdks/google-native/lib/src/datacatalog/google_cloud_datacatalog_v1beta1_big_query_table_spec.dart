// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a BigQuery table.
class GoogleCloudDatacatalogV1beta1BigQueryTableSpec {
  /// Spec of a BigQuery table. This field should only be populated if `table_source_type` is `BIGQUERY_TABLE`.
  final pulumi.Input<Map<String, dynamic>>? tableSpec;
  /// Table view specification. This field should only be populated if `table_source_type` is `BIGQUERY_VIEW`.
  final pulumi.Input<Map<String, dynamic>>? viewSpec;

  /// Creates a new [GoogleCloudDatacatalogV1beta1BigQueryTableSpec].
  /// [tableSpec] Spec of a BigQuery table. This field should only be populated if `table_source_type` is `BIGQUERY_TABLE`.
  /// [viewSpec] Table view specification. This field should only be populated if `table_source_type` is `BIGQUERY_VIEW`.
  const GoogleCloudDatacatalogV1beta1BigQueryTableSpec({
    this.tableSpec,
    this.viewSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tableSpec': ?tableSpec,
      'viewSpec': ?viewSpec,
    };
  }

  factory GoogleCloudDatacatalogV1beta1BigQueryTableSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1beta1BigQueryTableSpec(
      tableSpec: (() { final guardedValue = map['tableSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      viewSpec: (() { final guardedValue = map['viewSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
