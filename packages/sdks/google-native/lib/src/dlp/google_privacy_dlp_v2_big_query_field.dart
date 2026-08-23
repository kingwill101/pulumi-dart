// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_big_query_table.dart';
import 'google_privacy_dlp_v2_field_id.dart';

/// Message defining a field of a BigQuery table.
class GooglePrivacyDlpV2BigQueryField {
  /// Designated field in the BigQuery table.
  final pulumi.Input<GooglePrivacyDlpV2FieldId>? field;
  /// Source table of the field.
  final pulumi.Input<GooglePrivacyDlpV2BigQueryTable>? table;

  /// Creates a new [GooglePrivacyDlpV2BigQueryField].
  /// [field] Designated field in the BigQuery table.
  /// [table] Source table of the field.
  const GooglePrivacyDlpV2BigQueryField({
    this.field,
    this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2FieldId, Map<String, dynamic>>(field, (value) => value.toMap()),
      'table': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2BigQueryTable, Map<String, dynamic>>(table, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2BigQueryField.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2BigQueryField(
      field: (() { final guardedValue = map['field']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2FieldId.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      table: (() { final guardedValue = map['table']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2BigQueryTable.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
