// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_big_query_table_response.dart';
import 'google_privacy_dlp_v2_field_id_response.dart';

/// Message defining a field of a BigQuery table.
class GooglePrivacyDlpV2BigQueryFieldResponse {
  /// Designated field in the BigQuery table.
  final pulumi.Input<GooglePrivacyDlpV2FieldIdResponse> field;
  /// Source table of the field.
  final pulumi.Input<GooglePrivacyDlpV2BigQueryTableResponse> table;

  /// Creates a new [GooglePrivacyDlpV2BigQueryFieldResponse].
  /// [field] Designated field in the BigQuery table.
  /// [table] Source table of the field.
  GooglePrivacyDlpV2BigQueryFieldResponse({
    required this.field,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': pulumi.Input.mapInputValue<GooglePrivacyDlpV2FieldIdResponse, Map<String, dynamic>>(field, (value) => value.toMap()),
      'table': pulumi.Input.mapInputValue<GooglePrivacyDlpV2BigQueryTableResponse, Map<String, dynamic>>(table, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2BigQueryFieldResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2BigQueryFieldResponse(
      field: (GooglePrivacyDlpV2FieldIdResponse.fromMap((map['field'] as Map).cast<String, dynamic>())).input(),
      table: (GooglePrivacyDlpV2BigQueryTableResponse.fromMap((map['table'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

